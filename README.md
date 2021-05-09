# AirBnB

## Installation

* Lancer un `bundle install`
* Faire un `rails db:migrate`
* Terminer par un `rails db:seed`

## Schema ERD

[![](https://mermaid.ink/img/eyJjb2RlIjoiZXJEaWFncmFtXG4gICAgICAgICAgY2l0aWVzIHx8LS1veyBwbGFjZV90b19yZW50OiBiZWxvbmdzX3RvXG4gICAgICAgICAgY2l0aWVze1xuICAgICAgICAgIGludGVnZXIgaWRfUEtcbiAgICAgICAgICBzdHJpbmcgbmFtZVxuICAgICAgICAgIH1cbiAgICAgICAgICB1c2VycyB8fC0tb3sgcGxhY2VfdG9fcmVudDogYmVsb25nc190b19vd25lclxuICAgICAgICAgIHBsYWNlX3RvX3JlbnR7XG4gICAgICAgICAgaW50ZWdlciBpZF9QS1xuICAgICAgICAgIGludGVnZXIgY2l0eV9pZF9GS1xuICAgICAgICAgIGludGVnZXIgb3duZXJfaWQtdXNlcl9GS1xuICAgICAgICAgIGludGVnZXIgdmFjYW50X2JlZHNcbiAgICAgICAgICBmbG9hdCBwcmljZV9ieV9uaWdodFxuICAgICAgICAgIHRleHQgZGVzY3JpcHRpb25cbiAgICAgICAgICBib29sZWFuIHdpZmlcbiAgICAgICAgICBpbnRlZ2VyIHJlc2VydmF0aW9uX2lkX0ZLXG4gICAgICAgICAgfVxuICAgICAgICAgIHVzZXJze1xuICAgICAgICAgIGludGVnZXIgaWRfUEtcbiAgICAgICAgICBzdHJpbmcgZmlyc3RfbmFtZVxuICAgICAgICAgIHN0cmluZyBsYXN0X25hbWVcbiAgICAgICAgICBzdHJpbmcgZW1haWxcbiAgICAgICAgICB0ZXh0IGRlc2NyaXB0aW9uXG4gICAgICAgICAgaW50ZWdlciByZW50YWxfaWRfRktcbiAgICAgICAgICB9XG4gICAgICAgICAgcGxhY2VfdG9fcmVudCB8fC0tb3sgdXNlcnM6IGhhc19tYW55X2d1ZXN0c1xuICAgICAgICAgIHBsYWNlX3RvX3JlbnQgfHwtLW97IHJlc2VydmF0aW9uczogYmVsb25nc190b1xuICAgICAgICAgIHJlc2VydmF0aW9uc3tcbiAgICAgICAgICBpbnRlZ2VyIGlkX1BLXG4gICAgICAgICAgZGF0ZXRpbWUgc3RhcnRfZGF0ZVxuICAgICAgICAgIGludGVnZXIgcGxhY2VfdG9fcmVudF9pZF9GS1xuICAgICAgICAgIGludGVnZXIgZ3Vlc3RfaWQtdXNlcl9GS1xuICAgICAgICAgIHRpbWUgZHVyYXRpb25cbiAgICAgICAgICB9XG4gICAgICAgICAgdXNlcnMgfHwtLW97IHJlc2VydmF0aW9uczogYmVsb25nc190b1xuICAgICAgICAgICAgIiwibWVybWFpZCI6e30sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZXJEaWFncmFtXG4gICAgICAgICAgY2l0aWVzIHx8LS1veyBwbGFjZV90b19yZW50OiBiZWxvbmdzX3RvXG4gICAgICAgICAgY2l0aWVze1xuICAgICAgICAgIGludGVnZXIgaWRfUEtcbiAgICAgICAgICBzdHJpbmcgbmFtZVxuICAgICAgICAgIH1cbiAgICAgICAgICB1c2VycyB8fC0tb3sgcGxhY2VfdG9fcmVudDogYmVsb25nc190b19vd25lclxuICAgICAgICAgIHBsYWNlX3RvX3JlbnR7XG4gICAgICAgICAgaW50ZWdlciBpZF9QS1xuICAgICAgICAgIGludGVnZXIgY2l0eV9pZF9GS1xuICAgICAgICAgIGludGVnZXIgb3duZXJfaWQtdXNlcl9GS1xuICAgICAgICAgIGludGVnZXIgdmFjYW50X2JlZHNcbiAgICAgICAgICBmbG9hdCBwcmljZV9ieV9uaWdodFxuICAgICAgICAgIHRleHQgZGVzY3JpcHRpb25cbiAgICAgICAgICBib29sZWFuIHdpZmlcbiAgICAgICAgICBpbnRlZ2VyIHJlc2VydmF0aW9uX2lkX0ZLXG4gICAgICAgICAgfVxuICAgICAgICAgIHVzZXJze1xuICAgICAgICAgIGludGVnZXIgaWRfUEtcbiAgICAgICAgICBzdHJpbmcgZmlyc3RfbmFtZVxuICAgICAgICAgIHN0cmluZyBsYXN0X25hbWVcbiAgICAgICAgICBzdHJpbmcgZW1haWxcbiAgICAgICAgICB0ZXh0IGRlc2NyaXB0aW9uXG4gICAgICAgICAgaW50ZWdlciByZW50YWxfaWRfRktcbiAgICAgICAgICB9XG4gICAgICAgICAgcGxhY2VfdG9fcmVudCB8fC0tb3sgdXNlcnM6IGhhc19tYW55X2d1ZXN0c1xuICAgICAgICAgIHBsYWNlX3RvX3JlbnQgfHwtLW97IHJlc2VydmF0aW9uczogYmVsb25nc190b1xuICAgICAgICAgIHJlc2VydmF0aW9uc3tcbiAgICAgICAgICBpbnRlZ2VyIGlkX1BLXG4gICAgICAgICAgZGF0ZXRpbWUgc3RhcnRfZGF0ZVxuICAgICAgICAgIGludGVnZXIgcGxhY2VfdG9fcmVudF9pZF9GS1xuICAgICAgICAgIGludGVnZXIgZ3Vlc3RfaWQtdXNlcl9GS1xuICAgICAgICAgIHRpbWUgZHVyYXRpb25cbiAgICAgICAgICB9XG4gICAgICAgICAgdXNlcnMgfHwtLW97IHJlc2VydmF0aW9uczogYmVsb25nc190b1xuICAgICAgICAgICAgIiwibWVybWFpZCI6e30sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)
