# Spring_JSP
spring MVC
# Kotlin
Null이 존재하지 않음
# JPA
# JPA(Java Persistent API)

---

### JPA와 ORM

<aside>
💡 JPA는 Java ORM(Object Relational Mapping) 기술에 대한 API 표준 명세를 뜻한다.

여기서 ORM 기술이란 말 그대로 객체와 관계형 데이터베이스를 매핑시켜주는 기술을 뜻한다. 
객체는 객체대로, 관계형 데이터베이스는 관계형 데이터베이스대로 설계하고 ORM 프레임워크가 중간에서 매핑을 해주는 것이다.
ORM은 JPA 말고도 Spring 백엔드 프레임워크를 쓰면 MyBatis라는 것도 결국 이 ORM을 통해 Mapping을 시켜주는 것이다.

</aside>

### JPA는 단순 라이브러리가 아닌 ORM을 사용하기 위한 인터페이스 모음이다

이러한 JPA는 인터페이스의 모음, 단순한 명세이기 때문에 구현이 없다. Java를 통해 관계형 데이터베이스를 어떻게 사용할지 정의하는 하나의 방법일 뿐이다. 따라서 이러한 JPA의 구현체가 있어야 JPA를 사용할 수 있다.

---

### JPA의 구현체중 하나인 Hibernate

JPA는 여러가지 구현체가 합쳐진 형태인데 그 중 가장 많이 이용되는 구현체가 바로 Hibernate이다. JPA는 개발된 지 10년이 넘었으며 JPA의 핵심들인 EntityManagerFactory, EntityManager, EntityTransaction 등을 상속받아 구현한다. JPA를 구현하는 다른 구현체들로는 EclipesLink, DataNucleus등이 있다. 만약 JPA를 구현하는 구현체들이 마음에 들지 않는다면 개발자가 직접 JPA 구현체를 만들어서 사용할 수도 있다. Hibernate는 기본적으로 내부에서 JDBC를 이용해 관계형 데이터베이스와 커넥션을 맺고 상호작용한다.

---

### Spring Data JPA는 그럼 무엇인가?

Spring Data JPA는 무엇일까 결국 Spring Data JPA는 JPA를 좀 더 사용하기 편하도록 만들어 놓은 모듈이라고 생각하면 쉽게 이해할 것이다. 마치 Spring을 좀 더 쉽게 쓰기위해 Spring boot가 있는 것처럼 말이다. Spring Data JPA는 JPA를 한 단계 더 추상화 시킨 Repository 인터페이스를 제공하고 이러한 Spring Data JPA는 Hibernate와 같은 JPA 구현체를 사용해서 JPA를 사용하게 된다. Spring Data JPA를 사용하면 개발자는 더욱 간단하게 데이터 접근이 가능해진다.

---

### 정리

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/8bdcca35-4c35-419f-843c-b2a8560cad4d/3b6a7496-aa7c-4635-b4ec-5ad613d9f143/Untitled.png)

정리하면 결국 JPA는 Java 진영의 ORM 기술에 대한 API 표준 명세서이며, 이를 구현한 Hibernate는 JPA 구현체이고, 내부적으로 JDBC를 이용해 DB와 커넥션을 한다. Spring Data JPA는 JPA를 사용하기 쉽게 Spring에서 제공하는 모듈로 내부적으로 JPA를 구현해 이용한다.
