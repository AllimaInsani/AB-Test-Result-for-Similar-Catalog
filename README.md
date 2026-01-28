# AB Test Similar Catalog Result

## Problem :
Podcast Apps want to increase their listening metrics, particularly on Total Play per User and Total Podcast catalog consumed per user.

## Analysis Goal :
This analysis evaluates the A/B test results to measure the impact of recommending similar podcast catalogs on user towards theis listening behavior.

## AB Test Design :
<img width="479" height="254" alt="image" src="https://github.com/user-attachments/assets/47ed6247-129c-4b05-b93c-074adbcba0c1" />

## Insight :
We have 2 success metrics to measure this AB Test :
1. Total Play per User
2. Total Catalog per User

Given those success metrics, there is no significant difference on play per user and total catalog listened per user between baseline and variant B.

Here is total Play per User (Baselie vs Variant B) 

<img width="347" height="200" alt="image" src="https://github.com/user-attachments/assets/7205d5f8-6235-40f5-9638-e876ae5159ec" />

Here is total Catalog Play per User (Baselie vs Variant B)

<img width="362" height="196" alt="image" src="https://github.com/user-attachments/assets/caa1271a-b64b-4890-b6db-fa08134e7a6a" />

This issue was driven by low user conversion where most of users migh not aware of the new tab that allows them to explore other podcast catalogs
Another ploblem identified is that users who convert by tap on similar catalog section didn't select any of the recommendation catalogs. It might caused by, the similar catalog are not similar or didn’t catch their attention.

## Recommendation :
1. Give onboarding on catalog page to show that there is new tab entitled “Konten Serupa”
2. Do regular review and optimization on algorithm used in Konten Serupa
<img width="203" height="440" alt="image" src="https://github.com/user-attachments/assets/901e782b-4f00-4072-a321-7106325653b2" />
