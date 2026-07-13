INSERT INTO internships (title, company, location, sector, duration, stipend, skills)
SELECT 'Java Backend Developer Intern','TechCorp Solutions','Chennai','Cloud Computing','3 Months','15000','Java,SQL,Cloud' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Cloud Infrastructure Intern','SkyOps Technologies','Bangalore','Cloud Computing','3 Months','16000','Cloud,Java,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'AWS Cloud Intern','Infosys','Hyderabad','Cloud Computing','6 Months','18000','Cloud,SQL,Python' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Azure DevOps Intern','Wipro Technologies','Pune','Cloud Computing','4 Months','17000','Cloud,Java,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Cloud Support Intern','HCL Technologies','Chennai','Cloud Computing','3 Months','14000','Cloud,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Cloud Solutions Intern','Tech Mahindra','Bangalore','Cloud Computing','6 Months','20000','Cloud,Python,Java' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'GCP Engineer Intern','Capgemini India','Hyderabad','Cloud Computing','3 Months','16000','Cloud,Java' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Cloud Security Intern','Tata Consultancy Services','Remote','Cloud Computing','4 Months','15000','Cloud,Cyber Security,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'AI Research Intern','DeepMind Labs India','Bangalore','AI','6 Months','20000','Python,AI,Machine Learning' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'AI Product Intern','Microsoft India','Hyderabad','AI','6 Months','25000','Python,AI,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Conversational AI Intern','Google India','Bangalore','AI','6 Months','30000','Python,AI,Machine Learning' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'AI Solutions Intern','IBM India','Pune','AI','4 Months','18000','Python,AI,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'AI Integration Intern','Accenture','Chennai','AI','3 Months','16000','Python,AI,Java' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'NLP Research Intern','Samsung R&D','Bangalore','AI','6 Months','22000','Python,AI,Machine Learning' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Computer Vision Intern','Qualcomm India','Hyderabad','AI','6 Months','24000','Python,AI,Machine Learning' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'AI Testing Intern','Cognizant','Chennai','AI','3 Months','14000','Python,AI,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Frontend Developer Intern','WebWorks Digital','Remote','Web Development','3 Months','10000','HTML,CSS,Web Development' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Full Stack Web Intern','CodeBase Technologies','Chennai','Web Development','4 Months','14000','Java,HTML,CSS,Web Development' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'React Developer Intern','Freshworks','Chennai','Web Development','6 Months','18000','HTML,CSS,Web Development' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Node.js Backend Intern','Zoho Corporation','Chennai','Web Development','4 Months','16000','Web Development,SQL,Java' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Web Developer Intern','Flipkart','Bangalore','Web Development','6 Months','20000','HTML,CSS,Web Development,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'PHP Developer Intern','Mphasis','Pune','Web Development','3 Months','12000','Web Development,SQL,HTML' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Angular Developer Intern','L&T Infotech','Hyderabad','Web Development','4 Months','15000','HTML,CSS,Web Development' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'WordPress Developer Intern','Persistent Systems','Pune','Web Development','3 Months','11000','HTML,CSS,Web Development' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'UI/UX Design Intern','PixelStudio Design','Pune','UI/UX Designer','4 Months','12000','UI/UX,HTML,CSS' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Product Design Intern','Swiggy','Bangalore','UI/UX Designer','6 Months','18000','UI/UX,HTML,CSS' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'UX Research Intern','Ola Cabs','Bangalore','UI/UX Designer','3 Months','14000','UI/UX,CSS' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Graphic Design Intern','MakeMyTrip','Remote','UI/UX Designer','3 Months','10000','UI/UX,HTML,CSS' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Mobile UI Intern','Paytm','Remote','UI/UX Designer','4 Months','13000','UI/UX,HTML,CSS' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Visual Design Intern','Razorpay','Bangalore','UI/UX Designer','6 Months','16000','UI/UX,CSS,HTML' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Interaction Design Intern','Zepto','Bangalore','UI/UX Designer','3 Months','12000','UI/UX,HTML' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'UI Developer Intern','BYJU S','Bangalore','UI/UX Designer','4 Months','15000','UI/UX,HTML,CSS,Web Development' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Cyber Security Analyst Intern','SecureNet Systems','Hyderabad','Cyber Security','6 Months','18000','Cyber Security,Python,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Security Operations Intern','Deloitte India','Bangalore','Cyber Security','6 Months','20000','Cyber Security,Python' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Ethical Hacking Intern','EY India','Bangalore','Cyber Security','4 Months','16000','Cyber Security,Python,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Network Security Intern','KPMG India','Pune','Cyber Security','3 Months','15000','Cyber Security,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Cyber Forensics Intern','PwC India','Chennai','Cyber Security','6 Months','18000','Cyber Security,Python' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Security Audit Intern','Bosch India','Bangalore','Cyber Security','3 Months','14000','Cyber Security,SQL,Java' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Penetration Testing Intern','Quick Heal Technologies','Pune','Cyber Security','4 Months','16000','Cyber Security,Python' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'VAPT Intern','Tata Communications','Hyderabad','Cyber Security','6 Months','19000','Cyber Security,Python,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Machine Learning Intern','DataMinds Analytics','Remote','AI/ML Engineer','6 Months','22000','Python,Machine Learning,AI' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'ML Engineer Intern','Amazon India','Hyderabad','AI/ML Engineer','6 Months','28000','Python,Machine Learning,AI,SQL' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Data Science Intern','Mu Sigma','Bangalore','AI/ML Engineer','6 Months','20000','Python,Machine Learning,SQL,AI' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Deep Learning Intern','Nvidia India','Pune','AI/ML Engineer','6 Months','25000','Python,Machine Learning,AI' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'ML Research Intern','Adobe India','Hyderabad','AI/ML Engineer','6 Months','24000','Python,Machine Learning,AI' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Data Engineering Intern','PhonePe','Bangalore','AI/ML Engineer','4 Months','20000','Python,SQL,Machine Learning' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'MLOps Intern','Meesho','Bangalore','AI/ML Engineer','3 Months','18000','Python,Machine Learning,Cloud' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1) UNION ALL
SELECT 'Predictive Analytics Intern','Fractal Analytics','Remote','AI/ML Engineer','6 Months','22000','Python,Machine Learning,SQL,AI' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM internships LIMIT 1);
