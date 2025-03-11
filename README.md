# KaszMag Innovate - Spring Boot Alkalmazás

## **Projekt Leírás**
A **KaszMag Innovate** egy Spring Boot alapú webalkalmazás, amely adatbázis-kezelési funkciókat biztosít REST API-n keresztül. A projekt célja, hogy bemutassa a modern webfejlesztési technológiákat, mint a Spring Boot, JPA és RESTful API-k.

---

## **Funkciók**
- **Felhasználókezelés** – CRUD műveletek a felhasználók adatainak tárolására.
- **Adatbázis integráció** – MySQL vagy PostgreSQL támogatás.
- **Spring Boot REST API** – Kliensalkalmazások számára biztosított REST végpontok.
- **Szolgáltatás-orientált architektúra** – Elkülönített rétegek (controller, service, repository, model).

---

## **Technológiák**
- **Spring Boot 3+**
- **Spring Data JPA** (Hibernate ORM támogatással)
- **Maven** – Függőségkezelés
- **H2/MySQL/PostgreSQL** – Adatbázis integráció
- **Spring Security** (ha szükséges a jogosultságkezeléshez)

---

## **Telepítés és Futás**

### **1. Követelmények**
- Java 17+
- Maven 3+
- MySQL vagy PostgreSQL adatbázis

### **2. Projekt letöltése és beállítása**
```bash
git clone https://github.com/Kiskaszas/w8a1qh_zycm6_Java_spring_beadand-.git
cd w8a1qh_zycm6_Java_spring_beadand-
```

### **3. Adatbázis konfigurálása**
Nyisd meg az `application.properties` fájlt vagy `application.yml`-t és állítsd be az adatbázis kapcsolatot:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/your_database
spring.datasource.username=root
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
```
**Alternatíva:** Használj H2 adatbázist fejlesztési környezetben:
```properties
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
```

### **4. Az alkalmazás futtatása**
```bash
mvn clean install
mvn spring-boot:run
```
Vagy futtathatod közvetlenül az IDE-ből a `KaszMagInnovateApplication.java` osztályból.

---

## **Használat**
1. **Indítsd el az alkalmazást**
2. **Nyisd meg a böngészőben a REST API dokumentációját**: `http://localhost:8080/swagger-ui.html`
3. **Használj HTTP klienst (pl. Postman) az API teszteléséhez**

---

## **REST API végpontok**

| HTTP Módszer | Útvonal | Leírás |
|-------------|---------|--------|
| GET | `/api/users` | Összes felhasználó lekérdezése |
| GET | `/api/users/{id}` | Egy felhasználó lekérdezése |
| POST | `/api/users` | Új felhasználó létrehozása |
| PUT | `/api/users/{id}` | Felhasználó adatainak frissítése |
| DELETE | `/api/users/{id}` | Felhasználó törlése |

---

## **Fejlesztők**
- **Kaszás Viktor** és **Magyarosi Andor Máté** – Backend fejlesztés és API és adatbázis integráció

---
