<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
***
***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** harrisoncattell, Active-Directory-Account-Lockout-Monitor, twitter_handle, email, Active Directory Account Lockout Notifier, This is a simple powershell script that can notify users of AD account lockouts from users within a certain OU and notify via Email with information such as calling computer and time generated
-->


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/harrisoncattell/Active-Directory-Account-Lockout-Monitor">
    <img src="https://cdn0.iconfinder.com/data/icons/seo-outline-black-part-1/128/account_Password_Privacy_Safety_monitor_login_sign_in-512.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Active Directory Account Lockout Monitor</h3>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>

  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This is a lightweight PowerShell script that collects security events with the ID 4740 (which referes to account lockouts) and refernces them with a array of users that has been specified.
This information is emailed to a set of recipients with key information from the event.


### Built With

* Powershell  (A recent version will be ok, 4 or higher)
* Active Directory Powershell Module

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

This script requires the Active Directory PowerShell Module to be installed. Instructions can be found [Here](https://4sysops.com/wiki/how-to-install-the-powershell-active-directory-module/)

### Installation

1. Clone the repo (or download)
   ```sh
   git clone https://github.com/harrisoncattell/Active-Directory-Account-Lockout-Monitor.git
   ```
2. Please move script file to suitable location

3. Locate and change the following 
    ```$VerbosePath```
    ```$OUPath```



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/harrisoncattell/Active-Directory-Account-Lockout-Monitor/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - Harrison Cattell

Linkedin = https://www.linkedin.com/in/harrisoncattell/

Project Link: [https://github.com/harrisoncattell/Active-Directory-Account-Lockout-Monitor](https://github.com/harrisoncattell/Active-Directory-Account-Lockout-Monitor)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* []()
* []()
* []()





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/harrisoncattell/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/harrisoncattell/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/harrisoncattell/repo.svg?style=for-the-badge
[forks-url]: https://github.com/harrisoncattell/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/harrisoncattell/repo.svg?style=for-the-badge
[stars-url]: https://github.com/harrisoncattell/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/harrisoncattell/repo.svg?style=for-the-badge
[issues-url]: https://github.com/harrisoncattell/repo/issues
[license-shield]: https://img.shields.io/github/license/harrisoncattell/repo.svg?style=for-the-badge
[license-url]: https://github.com/harrisoncattell/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/harrisoncattell