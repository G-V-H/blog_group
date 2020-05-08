README

# Blog_group Rails Hackathon Project

# Ideas

- Simple SignIn/SignUp page using devise
- Users with many blogs
- Ability to create, edit and delete a blog post
- Ability to make comments on blog post from other users

# Scope

A simple web app that can create, update and delete blog entries, each blog post has an associated user id. Comments have a user id and blog id attached. Users should be able to comment on posts they didn't create. 

# Requirements

Users

- user:Primary key
- email:string
- password:string

Blog posts

- user:reference
- title:string
- description:text
- image:active_storage/amazon s3

Comments

- user:reference
- blog:reference
- comment:text
