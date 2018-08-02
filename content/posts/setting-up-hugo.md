---
title: "Setting Up Hugo"
date: 2018-08-01T16:50:48-04:00
showDate: true
draft: false
tags: ["blog","story"]
---

# Setting Up Hugo

 So, My first blog post will be about setting up the blog. I know, I know... I could just set up a word press site, but what is the fun in that. Not only is this more fun. but it should be easier for me to manage.

## Why Hugo?

 Because it's written in go, compiles quickly (nice while on the go with minimum resources) and lets me edit on the fly. I also liked how they do templates and the likes. Are there other solutions? yes. Do other solutions work well? probably. 

 [installing hugo](https://gohugo.io/getting-started/installing) is quick and simple. and the [themes](https://themes.gohugo.io/) are fantastic. For the base I'm starting off with [Call me Sam.](https://themes.gohugo.io/hugo-theme-sam/) because I liked its simplicity. I will probably update it's main at some point. (aka updating all typeface to use [Hack](https://sourcefoundry.org/hack/))

 For this post I'm going to keep it simple. but will try to hit all the high points.

## Netlify

 Netlify let me deploy and host "simply and quickly". now... there are some gocha's in this. First, to get the theme working properly you need follow these [steps](https://gohugo.io/hosting-and-deployment/hosting-on-netlify/#use-hugo-themes-with-netlify). Other then that and ensuring that your config.toml is set up to refer to the `https` site. 

 ```
 baseurl                 = "https://www.marek.sh/"
 ```

on top of this you need to ensure that you have the setting to enforce `https` set in Netlify settings.

While you are at it you should donate too [letsencrypt.org](https://letsencrypt.org/donate/) as they will give  you a free certificate.


## Conclusion

While I did not go into too many details because most of the above is covered in a lot of places.

Netlify was super simple to use and setup, It took about 4 buttons to deploy out of the github account and while there was a little confusion about the enforcement of `https` in the end, was very simple.