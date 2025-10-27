<a name="readme-top"></a>





 [![LinkedIn][linkedin-shield]][linkedin-url]  [![Github][github-shield]][github-url]   [![repo][repo-shield]][repo-url]   [![License][License-shield]][License-url]    [![pub.dev][pub.dev-shield]][pub.dev-url]   [![emailme][emailme-shield]][emailme-url]  [![version][version-shield]][version-url]  

<!-- TABLE OF CONTENTS -->

  <h3>Table of Contents</h3>
  <ol>
    <li><a href="#image">Preview</a></li>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#features">Features</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>

 <h1 align="center">Vertical Resizable Tabs </h1>
  <p align="center">
    A Flutter widget that displays two vertically resizable panels separated by a draggable divider.
    <br />
    <a href="https://pub.dev/packages/vertical_resizable_tabs"><strong>Explore on pub.dev »</strong></a>
  </p>


<!-- PROJECT LOGO -->
<br />


 <div align="center" id="image">
  
<img width="300"  alt="Image" src="https://github.com/user-attachments/assets/17cfd278-a1b1-432d-bfa2-6e316ed6043b" />
  <img width="300"  alt="Image" src="https://github.com/user-attachments/assets/590d4c01-b8bb-46cb-84a4-4aea7f958c20" />
<img width="300"  alt="Image" src="https://github.com/user-attachments/assets/6c4e1c0f-4569-4b4e-9a75-2e5baaaf0f86" />
</div>




  <p align="center">
    <a href="https://github.com/mouradBarkouchDotDev/vertical_resizable_tabs">View Demo</a>
    ·
    <a href="https://github.com/mouradBarkouchDotDev/vertical_resizable_tabs/issues">Report Bug</a>
    ·
    <a href="https://github.com/mouradBarkouchDotDev/vertical_resizable_tabs/issues">Request Feature</a>
  </p>







<!-- ABOUT THE PROJECT -->
## About The Project

`vertical_resizable_tabs` is a Flutter package that provides a **split-view layout** with two tabs (or panels) separated by a **draggable divider**.


<!-- ROADMAP -->
## Features

- [x] resizable
- [x] Lightweight
- [x] Works in both horizontal and vertical layouts
- [x] responsive
- [ ] customizable divider

<p align="right">(<a href="#readme-top">back to top</a>)</p>




### Built With
* [![Flutter][flutter.dart]][flutter-url]
* [![Dart][dart]][dart-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To use the `vertical_resizable_tabs` package in your Flutter project, follow these steps:

### Prerequisites

Make sure you have Flutter installed on your machine:
  * Terminal
      ```bash
      flutter --version
      ```

### Installation

1. Add the package to your `pubspec.yaml`:
  *  pubspec.yaml
     ```yaml
     dependencies:
       vertical_resizable_tabs: ^1.0.0
     ```
        

2. Install packages:
  * Terminal
    ```sh
     flutter pub get
     ```
   
3. Import it in your Dart file:
  * Dart file
     ```dart
     import 'package:vertical_resizable_tabs/vertical_resizable_tabs.dart';
     ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

 
### Usage

Here’s a simple example of creating a resizable tabs layout:
 ```dart
      Scaffold(
      appBar: AppBar(
        title: Text('Vertical resizable tabs exemple'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ResizableTabsVertical(
        radius: 12,
        topTab: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightBlue[100],
          child: Center(child: Text('Top tab')),
        ),
        bottomTab: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightGreen[100],
          child: Center(child: Text('Bottom tap')),
        ),
      ),
    );
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/feature.name`)
3. Commit your Changes (`git commit -m 'Add some feature.name'`)
4. Push to the Branch (`git push origin feature.name`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Mourad BARKOUCH 
- 2126 82 69 00 09  
- mouradbarkouch@gmail.com
- https://mouradbarkouch.dev/


<p align="right">(<a href="#readme-top">back to top</a>)</p>



[github-shield]: https://img.shields.io/badge/-Github-black.svg?style=for-the-badge&logo=github
[github-url]: https://github.com/mouradBarkouchDotDev

[repo-shield]: https://img.shields.io/badge/-Repo-grey.svg?style=for-the-badge&logo=github
[repo-url]: https://github.com/mouradBarkouchDotDev/vertical_resizable_tabs

[License-shield]: https://img.shields.io/badge/-License-yellow.svg?style=for-the-badge&logo=security
[License-url]: https://github.com/mouradBarkouchDotDev/vertical_resizable_tabs/blob/mouradBarkouchDotDev/LICENSE


[pub.dev-shield]: https://img.shields.io/badge/-pub.dev-blue.svg?style=for-the-badge&logo=dart
[pub.dev-url]: https://pub.dev/packages/vertical_resizable_tabs

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-blue.svg?style=for-the-badge&logo=linkedin
[linkedin-url]: https://linkedin.com/in/mouradBarkouchDotDev


[flutter.dart]: https://img.shields.io/badge/Flutter-blue?style=for-the-badge&logo=flutter&logoColor=white
[flutter-url]: https://flutter.dev/

[dart]: https://img.shields.io/badge/dart-blue?style=for-the-badge&logo=dart&logoColor=white
[dart-url]: https://dart.dev/

[emailme-shield]: https://img.shields.io/badge/mouradbarkouch.dev-red?style=for-the-badge&logo=site&logoColor=white
[emailme-url]: https://mouradbarkouch.dev

[version-shield]: https://img.shields.io/badge/v1.0.0-green?style=for-the-badge&logo=&logoColor=white
[version-url]: #
