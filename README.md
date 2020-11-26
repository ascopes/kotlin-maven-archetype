# kotlin-maven-archetype

A Maven Archetype for generating simple JVM-based Kotlin projects in Maven.

Includes JUnit 5 support via `kotlin.test` for writing Unit Tests.

## Usage

### Installing the archetype

Because I haven't published this to Maven Central, you need to build this archetype
project locally first. This is simple enough to do manually:

#### UNIX

```bash
git clone https://github.com/ascopes/kotlin-maven-archetype kotlin-maven-archetype
cd kotlin-maven-archetype
mvn install
cd ..
rm kotlin-maven-archetype -Rvf
```

#### Windows

```cmd
git clone https://github.com/ascopes/kotlin-maven-archetype kotlin-maven-archetype
cd kotlin-maven-archetype
mvn install
cd ..
del kotlin-maven-archetype
```

### Building a new project from the archetype

```bash
mvn archetype:generate -DarchetypeGroupId=io.ascopes -DarchetypeArtifactId=kotlin-maven-archetype
```

Maven will then proceed to ask some interactive questions before creating your project structure.

### First thing to try

Once generated, the first thing to try is running `mvn clean package` on your new project. The
dummy test should compile, run, and succeed if the project created successfully.
