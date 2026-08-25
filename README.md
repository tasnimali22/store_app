# 📱 store_app

تطبيق Flutter منظم وفق هيكلية الطبقات (Layer-Based Architecture) لسهولة إدارة المكونات وإعادة استخدام عناصر واجهة المستخدم.

---

## 📁 هيكلية المشروع (Project Structure)

```text
lib/
├── context/       # إدارة السياق، الثوابت العامة، أو الـ BuildContext extensions
├── custom/        # العناصر والمكونات المخصصة (Custom UI Components)
├── helper/        # الأدوية المساعدة والمشركات (Utility classes & Helper functions)
├── model/         # نماذج البيانات (Data Models & Parsers)
├── screen/        # شاشات التطبيق الرئيسية (UI Screens/Pages)
├── services/      # الخدمات الخارجية (API Requests, Firebase, Storage)
├── widget/        # العناصر الشائعة وإعادة الاستخدام (Reusable Widgets)
└── main.dart      # نقطة انطلاق التطبيق الرئيسية
