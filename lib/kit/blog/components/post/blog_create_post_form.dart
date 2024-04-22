import 'package:flutter/material.dart';
import 'package:flutter_fly_kits/kit/blog/components/blog_form_filed.dart';
import 'package:flutter_fly_kits/utils/spacing.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:ionicons/ionicons.dart';

class BlogCreatePostForm extends StatelessWidget {
  BlogCreatePostForm({super.key});
  final formKey = GlobalKey<FormState>();
  final QuillController controller = QuillController.basic();

  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        vertical(15),
        BlogFormField(
          controller: titleController,
          icon: Ionicons.create_outline,
          hintText: "title",
        ),
        vertical(15),
        QuillToolbar.simple(
          configurations: QuillSimpleToolbarConfigurations(
            controller: controller,
            buttonOptions: QuillSimpleToolbarButtonOptions(
              search: null
            ),
            sharedConfigurations: const QuillSharedConfigurations(
              locale: Locale('en'),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: QuillEditor.basic(
            configurations: QuillEditorConfigurations(
              controller: controller,
              readOnly: false,
              customStyles: DefaultStyles(),
              sharedConfigurations: const QuillSharedConfigurations(
                locale: Locale('en'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
