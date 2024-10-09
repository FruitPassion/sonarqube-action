FROM sonarsource/sonar-scanner-cli:4

LABEL "com.github.actions.name"="SonarQube Scan"
LABEL "com.github.actions.description"="Scan your code with SonarQube Scanner to detect bugs, vulnerabilities and code smells in more than 25 programming languages."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.2"
LABEL repository="https://github.com/FruitPassion/sonarqube-action"
LABEL homepage="https://fruitpassion.fr"
LABEL maintainer="FruitPassion"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
