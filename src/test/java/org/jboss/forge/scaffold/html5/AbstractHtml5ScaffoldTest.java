package org.jboss.forge.scaffold.html5;

import org.jboss.forge.project.Project;
import org.jboss.forge.test.AbstractShellTest;
import org.junit.Before;

public abstract class AbstractHtml5ScaffoldTest extends AbstractShellTest {

    protected Project project;

    @Before
    public void setup() throws Exception {
        project = setupScaffoldProject();
    }

    protected Project setupScaffoldProject() throws Exception {
        Project project = initializeJavaProject();
        queueInputLines("HIBERNATE", "JBOSS_AS7", "", "", "");
        getShell().execute("persistence setup");
        queueInputLines("", "", "");
        getShell().execute("validation setup --provider JAVA_EE");
        queueInputLines("", "", "", "");
        getShell().execute("scaffold setup --scaffoldType html5");
        return project;
    }

    protected Project setupScaffoldProject(String targetDir) throws Exception {
        Project project = initializeJavaProject();
        queueInputLines("HIBERNATE", "JBOSS_AS7", "", "", "");
        getShell().execute("persistence setup");
        queueInputLines("", "", "");
        getShell().execute("scaffold setup --targetDir " + targetDir);
        return project;
    }

    protected void generateScaffold() throws Exception {
        queueInputLines("", "", "", "", "");
        getShell().execute("scaffold from-entity com.test.model.*");
    }

}