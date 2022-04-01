import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_list/presentation/core/app_widget.dart';
import 'package:travel_list/presentation/pages/categories/categories_overview_page.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_card.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_editing_dialog.dart';

Finder _findCategoriesOverviewPage() => find.byType(CategoriesOverviewPage);

Future<void> categoriesTest() async {
  const _categoryName = 'Documents';
  const _categoryEditedName = 'Clothes';

  Finder findCategoryNameField() => find.bySemanticsLabel('category name');
  Finder findSaveButton() => find.text('SAVE');
  Finder findCategoryEditDialog() => find.byType(CategoryEditDialog);

  group('Overview categories, create, rename, reorder and delete category tests', () {
    testWidgets(
        'We could get to the Categories page through side menu. '
        'First we should see empty list of categories. '
        'Creating a category with empty name is prohibited. '
        'After creating category "Documents" it should appear in list',
        (WidgetTester tester) async {
          await _navigateToCategoriesOverviewPage(tester);

          await tester.tap(find.byIcon(Icons.add));
          await tester.pumpAndSettle();
          expect(findCategoryEditDialog(), findsOneWidget);
          expect(find.text('Create category'), findsOneWidget);

          final Form categoryForm = tester.widget(find.byType(Form)) as Form;
          final GlobalKey<FormState> formKey = categoryForm.key! as GlobalKey<FormState>;

          await tester.tap(findSaveButton());
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(formKey.currentState?.validate(), isFalse);
          expect(find.text('Cannot be empty'), findsOneWidget);

          await tester.enterText(findCategoryNameField(), _categoryName);
          await tester.testTextInput.receiveAction(TextInputAction.done);
          await tester.pumpAndSettle();

          await tester.tap(findSaveButton());
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(_findCategoriesOverviewPage(), findsOneWidget);
          expect(find.text(_categoryName), findsOneWidget);
        }
    );

    testWidgets(
        'Category is editable',
        (WidgetTester tester) async {
          await _navigateToCategoriesOverviewPage(tester);

          await tester.tap(find.text(_categoryName));
          await tester.pumpAndSettle();
          expect(findCategoryEditDialog(), findsOneWidget);
          expect(find.text('Edit category'), findsOneWidget);

          // this bloc faces problems when categoriesTest() doesn't run before
          // other tests (tripsTest(), for example). I use imitation of pressing
          // submitting button and double pumpAndSettle to fix it,
          // but maybe there is a better way
          await tester.enterText(findCategoryNameField(), _categoryEditedName);
          await tester.testTextInput.receiveAction(TextInputAction.done); // https://stackoverflow.com/questions/55101120/submit-textfield-in-flutter-integration-test
          await tester.pumpAndSettle(const Duration(seconds: 1));
          await tester.pumpAndSettle(const Duration(seconds: 1));

          await tester.tap(findSaveButton());
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(_findCategoriesOverviewPage(), findsOneWidget);
          expect(find.text(_categoryEditedName), findsOneWidget);
        }
    );

    testWidgets(
        'After deleting the category the list of categories should be empty again',
        (WidgetTester tester) async {
          await _navigateToCategoriesOverviewPage(tester);

          final _categoryCard = find.byType(Slidable);
          final _deleteButton = find.byIcon(Icons.delete);

          await tester.dragUntilVisible(_deleteButton, _categoryCard, const Offset(-100, 0));
          await tester.pump(const Duration(seconds: 1));

          await tester.tap(_deleteButton);
          await tester.pumpAndSettle(const Duration(seconds: 1));
          expect(find.text('Deleting a category'), findsOneWidget);

          final _categoryNameOnDeletionDialog = find.byWidgetPredicate(
            (widget) => widget is Text &&
                widget.key == const Key('categoryName') &&
                widget.data == _categoryEditedName,
            description: 'category name on deletion dialog',
          );
          expect(_categoryNameOnDeletionDialog, findsOneWidget);
          await tester.tap(find.text('DELETE'));
          await tester.pumpAndSettle(const Duration(seconds: 1));

          expect(_findCategoriesOverviewPage(), findsOneWidget);
          expect(find.byType(CategoryCard), findsNothing);
        }
    );
  });
}

Future<void> _navigateToCategoriesOverviewPage(WidgetTester tester) async {
  await tester.pumpWidget(AppWidget());
  await tester.pumpAndSettle();
  
  await tester.tap(find.byIcon(Icons.menu));
  await tester.pumpAndSettle();
  
  await tester.tap(find.byIcon(Icons.category));
  await tester.pumpAndSettle(const Duration(seconds: 1));
  expect(_findCategoriesOverviewPage(), findsOneWidget);
}
