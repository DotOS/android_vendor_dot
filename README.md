<p align="center">
<img src="https://raw.githubusercontent.com/samgrande/XDA_Template/master/vendorart.png" > 

Getting Started
==================================================
To get started with the building process, you'll need to get familiar with [Git and Repo](http://source.android.com/source/using-repo.html).

To initialize your local repository, use a command like this:

```bash
    repo init -u git://github.com/DotOS/manifest.git -b dot-p
```

Then to sync up:

```bash
    repo sync  -f --force-sync --no-clone-bundle
```

Additionally, you can define the number of parallel download repo should do:

```bash
	repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync -jX    ( X is the number of parallel download repo should do choose depending on your cpu )
```

Compilation of Dot OS:
====================

From root directory of Project, perform following commands in terminal


```bash
source build/envsetup.sh
lunch dot_<devicecodename>-userdebug
make bacon
```
-----------------------------------------	
Getting Official Maintainership for dotOS
==========================================
To get Official Maintainership for dotOS you should have a stable device source with all the main components working.

First make an unofficial build of dotOS and post in [**XDA**](xda-developers.com) 

Fill this form up :- [**Maintainership Form**](https://blog.droidontime.com/changes/maintainership-form-pie.html) 

Note : You get addded or selected for a single device. To maintain another device you will need to fill up the Maintainership FORM again

After that We will contact you by judging your Un-Official build published on xda



Join our [**Telegram Channel**](https://t.me/dotOSchannel) and our  [**Telegram group**](https://t.me/dotos)

To publish builds use our Template : [**DotOS XDA Template**](https://github.com/DotOS/XDA_Template-changelogs)

----------------------------

Submitting Patches
==================
DotOS is an open source project thus any patches/contributions are always welcome !

To begin with, you need to login to our code review system at [DotOS Code Review](http://review.droidontime.com)

We support login using Google Oauth or Github Oauth provider, which means if you have either of account you can login to gerrit by that account.
It is important that you set the USERNAME in your account on gerrit. If you have logged in using Github account then your Github USERNAME will be used as gerrit USERNAME automatically. Else you can set unique username in `Profile` section of gerrit account Settings.

The next step is to add your SSH key to your gerrit account.

Refer the Github guide on [how to generate SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

Add the generated SSH key (the contents of id_rsa.pub file) to your gerrit account in `SSH Public Keys` section.



You can upload the patches/contributions for review process using following procedure:

```bash
git clone PROJECT
```

For Example -  git clone http://review.droidontime.com/DotOS/android_packages_apps_Settings

```bash
cd CLONED_DIRECTORY
```

Make the changes you wish to add for review and execute following commands,

```bash
git add -A
git commit -m "commit message"
```

Commit message should be clear, well written and easy to understand.

If you have satisfied with the changes you made then you can upload the patchset to gerrit.

```bash
git push ssh://USERNAME@review.droidontime.com:29418/PROJECT_NAME HEAD:refs/for/dot-p
```

Here the PROJECT_NAME is the path to repository on gerrit. You can find the PROJECT_NAME by navigating to the `Projects` section on gerrit.

For example - DotOS/android_packages_apps_Settings

It is recommended that you commit your several relevent patches in to one single commit.

Squash multiple commits using this command:

```bash
git rebase -i HEAD~<# of commits>
```

If you are going to make extra changes to an existing patch, Don't start a new patch, instead

```bash
git add .

git commit --amend
```
and simply push the changes to gerrit

Gerrit will recognize it as a new patchset in an exisiting commit.

To view the status of your and/or others patches, visit [DotOS Code Review](http://review.droidontime.com)

If you encounter any issues, feel free to contact us on our [Telegram channel](https://t.me/dotos). We will be happy to assist you !


<p align="center">
<img src="https://github.com/DotOS/manifest/blob/dot-n/dotlogo.png" > 

</p>

