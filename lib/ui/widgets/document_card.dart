import 'package:flutter/material.dart';
import 'package:vpec/models/document_model.dart';
import 'package:vpec/ui/widgets/styled_widgets.dart';
import 'package:vpec/utils/theme_helper.dart';

class DocumentCard extends StatelessWidget {
  final DocumentModel document;

  const DocumentCard({Key key, this.document}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return styledListTile(
        context: context,
        icon: Icon(
          Icons.description_outlined,
          color: Theme.of(context).accentColor,
          size: 32,
        ),
        title: document.title ?? 'Не указано',
        subtitle: document.subtitle ?? 'Не указано',
        onTap: () async {
          await Navigator.pushNamed(context, '/document', arguments: document);
          ThemeHelper().colorStatusBar(context: context, haveAppbar: false);
        });
  }
}
