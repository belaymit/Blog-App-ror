<a name="readme-top"></a>

<div align="center">
  <!-- You are encouraged to replace this logo with your own! Otherwise you can also remove it. -->
  <img src="./images/images.jpg" alt="logo" width="240"  height="auto" />
  <br/>
<h3>Blog App</h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Blog-app-ror <a name="about-project"></a>

**Blog-app-ror** is a simple blog app that is created to learn more about ruby on rails and postgresql
## Learning objectives
> - Install Ruby on Rails framework.
> - Use Ruby Gems as a software packages system.
> - Understand what ORM is.
> - Use database migration files to maintain database schema.
> - Set up associations between models.
> - Write SQL queries with Active Record.
> - Use validations for models.
> - Write unit tests for models.
> - Use controllers to handle requests and render empty views.
> - Understand Rails naming conventions.
> - Use params from browser requests in a safe way.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org">Ruby</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Database Models
- Database Schema



<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Schema Diagram 

<img src="./images/blog_app_erd_v1_1.png" width="500" alt="Schema-diagram">
<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

### 1. Install Rails
 - But before you install Rails, you should check to make sure that your system has the proper prerequisites installed. These include:
  - Ruby
  - SQLite3
### In order to install ruby:
#### Select your platform
 - MacOS
 - Ubuntu
 - Windows

### Tools on Unix based systems

There are several tools that can be used to install Ruby on your local machine. The most popular are:
```sh
   rbenv
   RVM
   asdf
```
We will go with rbenv because it does not override any of the system shell scripts like RVM and it allows us to compile older Ruby versions that will fail with RVM.

## MacOS

Run the following commands in your terminal:
```sh
brew install rbenv ruby-build
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```
> Note: If you are using a shell other than bash, for example zsh, you should change the first line to use zshrc like this:
```sh
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
```
> or any other config file of your shell.

## Ubuntu

> You can install Ruby on Ubuntu in several ways. The easiest way is to run the following command (source):
```sh
  sudo apt-get install ruby-full
```
If that doesn't work, you can try installing Ruby using [rbenv](https://github.com/rbenv/rbenv). This is a version manager tool for the Ruby programming language on Unix-like systems.

Run the following commands in your terminal:

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```
consider checking [ Install ruby on Ubuntu 20.04 with rbenv.](https://linuxtut.com/install-ruby-on-ubuntu-20.04-with-rbenv-e419f/)

## Windows
Installing Ruby on Windows is a little more difficult than installing it on another OS. We would recommend using [WSL](https://learn.microsoft.com/en-us/windows/wsl/about), but you can also try to install Ruby directly on your OS with [rubyinstaller](https://rubyinstaller.org/).

```sh
WSL only works on 64-bit installations of Windows.
```

If you are using a 64-bit version of Windows 10, we recommend following [this](https://gorails.com/setup/windows/10) article to install Ruby.

If you can not use WSL then you should follow these steps:

> Download the last version of [RubyInstaller](https://rubyinstaller.org/downloads/).
> Run RubyInstaller and follow the steps described [here](https://stackify.com/install-ruby-on-windows-everything-you-need-to-get-going/).

### Check for your ruby version
 ```sh
  ruby --version
  ruby 2.7.0
 ```
To install Rails on Windows, you'll first need to install [Ruby Installer](https://rubyinstaller.org/).

### Installing SQLite3
You will also need an installation of the SQLite3 database. Many popular UNIX-like OSes ship with an acceptable version of SQLite3. Others can find installation instructions at the [SQLite3 website](https://www.sqlite.org/index.html).

### Check for your SQLite3 version
```sh
    sqlite3 --version
```
To install Rails, use the ``gem install`` command provided by RubyGems:
```sh
 gem install rails
```

### Setup

Clone this repository to your desired folder:


```sh
  cd my-folder
  git clone git@github.com:belaymit/Blog-App-ror.git
```

### Install

Install this project with:


```sh
  cd Blog-App-ror
  bundle install
```

### Usage

To run the project, execute the following command:


```sh
  rails server
```

### Run tests

To run tests, run the following command:

```sh
  rspec spec/models // to test models
  rspec spec/requests/controller_name_spec.rb // to test controllers
```



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Belay Birhanu G**

- GitHub: [@githubhandle](https://github.com/belaymit)
- Twitter: [@twitterhandle](https://twitter.com/2belamit)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/belay-bgwa/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## FUTURE FEATURES

- Full Blog App
- Delete Blogs
- Update Blogs
- Like and comment on Blogs

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/belaymit/Blog-App-ror/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please consider starring it

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>


I would like to thank Microverse Community 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

- **Why ruby on rails?**

  - There are several reasons why developers choose Ruby on Rails as their web application framework of choice:
    -  **Productivity**: Rails provides a lot of built-in features and conventions that make it easy to create a functional web application quickly. For example, it comes with its own ORM (Object Relational Mapping) system, which simplifies database interactions, and provides a lot of helper methods and templates to quickly build out common functionality.
    - **Convention over configuration:** Rails has a set of conventions that help developers to structure their code in a consistent and maintainable way. This means that developers can spend less time configuring their application and more time writing code.
    - **Ruby programming language:** Ruby is a very flexible and expressive programming language that is easy to read and write. It allows developers to focus on the business logic of their application rather than getting bogged down in boilerplate code.
    - **Active community**: Ruby on Rails has a very active and supportive community of developers who contribute to the framework and share their knowledge and expertise through various online resources and forums.

    - **Scaling**: Rails is designed to scale well, and there are many tools and techniques available to help developers scale their applications as their user base grows.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.



<p align="right">(<a href="#readme-top">back to top</a>)</p>
