# Тестовый настроенный проект автотестов WEB-проекта

### Используемый стек
python, robotframework, robotframework-seleniumlibrary

**Robot Framework** - это фреймворк для автоматизации тестирования с открытым исходным кодом.
**SeleniumLibrary** - библиотека веб-тестирования для Robot Framework, внутри которой используется инструмент Selenium.

### Подготовка проекта

#### Подготовка виртуального окружения
- создать виртуальное окружение в директории с тестами любым способом (venv для примера):
`python -m venv venv`

- активировать виртуальное окружение:
`source /venv/bin/activate` в linux
`venv\Scripts\activate.bat` в windows

- установить необходимые пакеты:
`pip install -r /path/to/requirements.txt`

#### Подготовка тестового объекта тестирования
`python demoapp/server.py`

#### Установка драйверов браузеров
Как и для Selenium, требуется установить драйверы необходимых браузеров, которые вы предполагаете использовть в тестах.
Подробнее про драйверы браузеров и ссылки для скачивания на https://www.selenium.dev/selenium/docs/api/py/index.html#drivers

Кроме того, можно использовать инструмент [WebdriverManager](https://github.com/omenia/webdrivermanager), который поможет найти последнюю или любую другую версию подходящего для вас драйвера и загрузить её.

### Запуск тестов

запуск всех тестов из директории tests/

`robot tests/`

запуск тестов из отдельного файла

`robot tests/welcome_page_tests.robot`

запуск определенного теста

`robot --test "Valid Login and Password" tests/valid_login_tests.robot`

запуск тестов отмеченных определенным тегом

`poetry run robot --include positive tests/valid_login_tests.robot`

запуск тестов с указанием браузера

`robot --variable BROWSER:Chrome tests/`

больше информации о параметрах запуска
`robot --help`

### Дополнительная настройка pycharm для продуктивной работы

https://plugins.jetbrains.com/plugin/16424-robot-runner
плагин для настройки запуска robot-тестов/сьютов из pychrm

https://github.com/lte2000/intellibot
плагин для поддержки robot framework в pycharm (синтаксис и др.)
