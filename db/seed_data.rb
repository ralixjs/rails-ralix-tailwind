# Seed data for the Rails application
# This file contains static data used to seed the database

module SeedData
  USERS = [
    { name: "John Smith", email: "john@example.com" },
    { name: "Jane Doe", email: "jane@example.com" },
    { name: "Michael Johnson", email: "michael@example.com" },
    { name: "Emily Davis", email: "emily@example.com" },
    { name: "David Wilson", email: "david@example.com" },
    { name: "Sarah Brown", email: "sarah@example.com" },
    { name: "Chris Miller", email: "chris@example.com" },
    { name: "Amanda Taylor", email: "amanda@example.com" },
    { name: "Ryan Anderson", email: "ryan@example.com" },
    { name: "Lisa Thompson", email: "lisa@example.com" }
  ].freeze

  ARTICLES = [
    {
      title: "Getting Started with Ruby on Rails",
      body: "Ruby on Rails is a server-side web application framework written in Ruby. It is a model-view-controller framework, providing default structures for a database, a web service, and web pages. This article will guide you through the basics of setting up and building your first Rails application."
    },
    {
      title: "Modern Frontend Development",
      body: "The landscape of frontend development has evolved significantly in recent years. With the introduction of new frameworks and tools, developers now have more options than ever to create engaging and interactive user interfaces. This article explores the latest trends and best practices in frontend development."
    },
    {
      title: "Database Design Principles",
      body: "A well-designed database is crucial for any application's performance and scalability. Understanding the principles of database design, normalization, and optimization can make the difference between a slow, inefficient system and a fast, reliable one. Learn the fundamentals of creating robust database schemas."
    },
    {
      title: "API Development Best Practices",
      body: "Building robust and scalable APIs requires careful planning and adherence to best practices. From choosing the right architectural patterns to implementing proper authentication and error handling, this guide covers everything you need to know about creating professional-grade APIs."
    },
    {
      title: "Testing Strategies for Web Applications",
      body: "Testing is an essential part of the development process that ensures your application works as expected and remains stable as it grows. This article covers different types of testing, from unit tests to integration tests, and how to implement an effective testing strategy for your web applications."
    },
    {
      title: "Performance Optimization Techniques",
      body: "Website performance directly impacts user experience and business success. Understanding how to identify bottlenecks, optimize database queries, implement caching strategies, and reduce load times can significantly improve your application's performance and user satisfaction."
    },
    {
      title: "Security Considerations for Web Development",
      body: "Security should be a top priority in any web development project. From protecting against common vulnerabilities like SQL injection and cross-site scripting to implementing proper authentication and authorization mechanisms, this article covers essential security practices every developer should know."
    },
    {
      title: "DevOps and Deployment Strategies",
      body: "Modern web development extends beyond just writing code. Understanding deployment pipelines, continuous integration, and infrastructure management is crucial for delivering reliable applications. Learn about different deployment strategies and tools that can streamline your development workflow."
    },
    {
      title: "User Experience Design Principles",
      body: "Creating applications that users love requires understanding the principles of user experience design. From information architecture to visual design and usability testing, this article explores how to create intuitive and engaging user interfaces that meet user needs and business objectives."
    },
    {
      title: "Scalability and Architecture Patterns",
      body: "As applications grow, scalability becomes a critical concern. Understanding different architectural patterns, microservices, load balancing, and database scaling strategies can help you build applications that can handle increased traffic and data volumes without compromising performance."
    },
    {
      title: "Mobile-First Development Approach",
      body: "With the majority of web traffic now coming from mobile devices, adopting a mobile-first approach to development has become essential. This article discusses responsive design principles, performance considerations for mobile devices, and strategies for creating great mobile user experiences."
    },
    {
      title: "Version Control and Collaboration",
      body: "Effective version control and collaboration practices are fundamental to successful software development. Understanding Git workflows, code review processes, and team collaboration tools can significantly improve productivity and code quality in development teams."
    },
    {
      title: "Monitoring and Observability",
      body: "Once your application is deployed, monitoring its performance and health becomes crucial. Learn about different monitoring tools, logging strategies, error tracking, and observability practices that help you maintain reliable and performant applications in production."
    },
    {
      title: "Progressive Web Applications",
      body: "Progressive Web Applications combine the best of web and mobile apps to provide users with an app-like experience directly in the browser. This article explores the key features of PWAs, including service workers, web app manifests, and offline functionality."
    },
    {
      title: "Data Visualization and Analytics",
      body: "Making data meaningful and actionable requires effective visualization and analytics tools. From choosing the right chart types to implementing real-time dashboards and understanding data analysis techniques, this article covers the essentials of data presentation and interpretation."
    },
    {
      title: "Accessibility in Web Development",
      body: "Creating inclusive web applications that work for users with disabilities is both a moral imperative and often a legal requirement. Learn about web accessibility standards, assistive technologies, and practical techniques for building accessible user interfaces."
    },
    {
      title: "Microservices Architecture",
      body: "Microservices architecture has gained popularity for building scalable and maintainable applications. This article explores the benefits and challenges of microservices, service communication patterns, and strategies for breaking down monolithic applications into microservices."
    },
    {
      title: "Cloud Computing Fundamentals",
      body: "Cloud computing has revolutionized how we deploy and scale applications. Understanding different cloud service models, infrastructure as code, containerization, and cloud-native development practices is essential for modern web developers."
    },
    {
      title: "Machine Learning Integration",
      body: "Integrating machine learning capabilities into web applications is becoming increasingly common. This article covers the basics of ML model deployment, API integration, and practical considerations for incorporating artificial intelligence features into your applications."
    },
    {
      title: "The Future of Web Development",
      body: "The web development landscape continues to evolve rapidly with new technologies, frameworks, and paradigms emerging regularly. This article explores upcoming trends, emerging technologies, and predictions for the future of web development, helping developers stay ahead of the curve."
    }
  ].freeze
end