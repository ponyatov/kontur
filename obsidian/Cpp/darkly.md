```Cpp
extern QPalette* palette;  /// color palette
extern void darkly();      /// set darkly colors
```
```Cpp
QPalette* palette = nullptr;

void darkly() {
    assert(palette = new QPalette());
    // darkly
    palette->setColor(QPalette::Window, QColor(0x22, 0x22, 0x22));
    // so
    palette->setColor(QPalette::WindowText, Qt::white);
    palette->setColor(QPalette::Base, QColor(42, 42, 42));
    palette->setColor(QPalette::AlternateBase, QColor(66, 66, 66));
    palette->setColor(QPalette::ToolTipBase, Qt::white);
    palette->setColor(QPalette::ToolTipText, Qt::white);
    palette->setColor(QPalette::Text, Qt::white);
    palette->setColor(QPalette::Dark, QColor(35, 35, 35));
    palette->setColor(QPalette::Shadow, QColor(20, 20, 20));
    palette->setColor(QPalette::Button, QColor(53, 53, 53));
    palette->setColor(QPalette::ButtonText, Qt::white);
    palette->setColor(QPalette::BrightText, Qt::red);
    palette->setColor(QPalette::Link, QColor(42, 130, 218));
    palette->setColor(QPalette::Highlight, QColor(42, 130, 218));
    palette->setColor(QPalette::HighlightedText, Qt::white);
    // disabled
    palette->setColor(QPalette::Disabled, QPalette::WindowText,
                      QColor(127, 127, 127));
    palette->setColor(QPalette::Disabled, QPalette::Text,
                      QColor(127, 127, 127));
    palette->setColor(QPalette::Disabled, QPalette::ButtonText,
                      QColor(127, 127, 127));
    palette->setColor(QPalette::Disabled, QPalette::Highlight,
                      QColor(80, 80, 80));
    palette->setColor(QPalette::Disabled, QPalette::HighlightedText,
                      QColor(127, 127, 127));
    //
    qapp->setPalette(*palette);
}
```
