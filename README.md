# Customer Support Management System

This project focuses on managing customer support tickets and tracking interactions between employees and customers. It extends previous projects like customer_feedback.sql, providing a complete solution for support management.

## Features
- Manage tickets: Register and update customer issues.
- Track interactions: Log details of employee actions for each ticket.
- Analyze data: Gain insights into common issues and resolution times.

## Database Structure
- **Tickets Table:** Stores support tickets, including status and priority.
- **TicketInteractions Table:** Logs employee interactions with tickets.

## Prerequisites
- MySQL Server installed.
- Basic understanding of SQL.

## How to Use
1. Import the database:
   ```bash
   mysql -u root -p < customer_support.sql
