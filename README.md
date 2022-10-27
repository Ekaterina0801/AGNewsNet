# AGNewsNet
Гем для генерации нейронной сети, которая определяет тему поданной на вход новости (Sports, World, Business, Sci/Tec), на датасете AGNews. 
Возможна установка своих параметров обучения - batch_size и count_of_epochs.

# Установка
Установить гем и добавить в GemFile можно следующей командой: 

```python
bundle add AGNewsNet
```

Если bundler не используется для установки зависимостей, гем можно установить следующим образом: 

```python
gem install AGNewsNet
```

# Использование

##### Создание модели
 
Создание модели является обязательным в начале использования гема
При первом создании модели нейросеть будет сохранена в файл agnewsNet.pth

Создание и обучение нейросети с заранее установленными параметрами
(по умолчанию batch_size = 64 и count_of_epochs = 5)

```python
network = AGNews::Net.new
network.createModel
```

Создание и обучение нейросети измененными параметрами 

```python
network = AGNews::Net.new(batch_size = 32, count_of_epochs = 10 )
network.createModel
```

P.S. Часть кода нейросети адаптирована под Ruby с официальной документации PyTorch на Python.
##### Предсказание темы статьи / новости

Если на вход подается файл
```python
network.makePredictionFromFile(FilePath)
```

Если на вход подается строка
```python
network.makePredictionFromString(text)
```

# Разработка

Запуск тестов осуществляется следующей командой в терминале: 

```python
bundle exec rspec
```

# Лицензия
Гем доступен с открытым исходным кодом в соответствии с условиями [MIT License](https://github.com/Ekaterina0801/AGNewsNet/blob/master/LICENSE )
