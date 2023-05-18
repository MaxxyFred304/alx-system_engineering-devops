Post Mortem Issue Summary:

On May 10, 2023, from 2:00 PM to 5:00 PM EAT, our online shopping platform experienced an outage, affecting 75% of our users. During this period, users were unable to access the website, browse products, or complete transactions, resulting in a significant loss of revenue.

Timeline:
2:00 PM: The issue was detected through monitoring alerts, indicating a spike in server response time and error rate.
2:05 PM: The on-call engineer was alerted and started investigating the issue.
2:10 PM: The engineer noticed that the database server was running slow and restarted it.
2:15 PM: The website was still inaccessible, and the engineer suspected a network issue, so they contacted the network team for assistance.
2:20 PM: The network team confirmed that there were no network issues, and the engineer continued investigating.
2:30 PM: The engineer found that a recent deployment included a misconfigured caching mechanism, causing a high number of database queries, leading to the slowdown.
2:35 PM: The engineer reverted the deployment, which resolved the issue for a few minutes, but it reoccurred shortly after.
2:40 PM: The engineer realized that the rollback didn't remove the misconfigured cache, leading to the reoccurrence of the issue, so they removed the cache manually.
2:45 PM: The website was accessible again, and the engineer continued monitoring to ensure the issue didn't reoccur.
5:00 PM: The incident was resolved, and the engineer documented the issue and resolution.

Root cause and resolution:
The root cause of the issue was a misconfigured caching mechanism included in a recent deployment, causing a high number of database queries and slowing down the database server. The issue was resolved by reverting the deployment and manually removing the misconfigured cache, ensuring it doesn't reoccur.

Corrective and preventative measures:
To prevent similar issues from occurring in the future, the following measures will be implemented:
Implement a more thorough testing process for deployments, including checking for caching misconfigurations.
Implement better monitoring to detect similar issues early.
Review previous deployments for misconfigurations, especially those related to caching mechanisms.
Provide additional training to the development team on caching mechanisms and how to configure them correctly.
Create a post-incident review process to evaluate the effectiveness of the incident response and identify areas for improvement.

Tasks to address the issue:
Review and update the deployment process to include additional testing for caching misconfigurations.
Update the monitoring system to detect similar issues early.
Schedule a training session for the development team on caching mechanisms.
Review previous deployments for misconfigurations and document any findings.
Implement a post-incident review process to evaluate the effectiveness of the incident response and identify areas for improvement.

Now that we’ve resolved the issue, we’ll obviously be on the lookout for more failures or outages. It is important to consider the above considerations since we do not want to lose 75% of our users don’t we? 
Now relax since all the issues have been resolved, you’re clearly in very good hands.


