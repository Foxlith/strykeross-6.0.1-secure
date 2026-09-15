.class public abstract Lcom/stryker/terminal/component/profile/NeoProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/codegen/CodeGenObject;
.implements Lcom/stryker/terminal/component/ConfigFileBasedObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/profile/NeoProfile$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/component/profile/NeoProfile$Companion;

.field private static final PROFILE_NAME:Ljava/lang/String; = "name"


# instance fields
.field private profileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/profile/NeoProfile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/profile/NeoProfile;->Companion:Lcom/stryker/terminal/component/profile/NeoProfile$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown Profile"

    iput-object v0, p0, Lcom/stryker/terminal/component/profile/NeoProfile;->profileName:Ljava/lang/String;

    return-void
.end method

.method private final getProfileMetaPath()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileMetaName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCodeGenerator(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)Lcom/stryker/terminal/component/codegen/CodeGenerator;
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/component/codegen/NeoProfileGenerator;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/component/codegen/NeoProfileGenerator;-><init>(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)V

    return-object v0
.end method

.method public final getProfileBoolean(Lt4/a;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileMetaPath()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 1
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v0}, Lt4/a;->b([Ljava/lang/String;)Lu4/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lu4/d;->b(Ljava/lang/String;)Lu4/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object p2, Lu4/e;->b:Lu4/e;

    invoke-static {p1, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Lu4/e;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    .line 6
    invoke-static {p1, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z
    .locals 1

    .line 7
    const-string v0, "<this>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_0
    return p3
.end method

.method public abstract getProfileMetaName()Ljava/lang/String;
.end method

.method public final getProfileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/profile/NeoProfile;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileString(Lt4/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileMetaPath()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lt4/a;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getProfileString(Lt4/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileString(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    return-object p3
.end method

.method public onConfigLoaded(Lt4/a;)V
    .locals 2

    .line 1
    const-string v0, "configVisitor"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    iget-object v1, p0, Lcom/stryker/terminal/component/profile/NeoProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileString(Lt4/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/component/profile/NeoProfile;->profileName:Ljava/lang/String;

    return-void
.end method

.method public final setProfileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/profile/NeoProfile;->profileName:Ljava/lang/String;

    return-void
.end method

.method public final testLoadConfigure(Ljava/io/File;)Z
    .locals 5

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lcom/stryker/terminal/component/config/ConfigureComponent;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/config/ConfigureComponent;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/config/ConfigureComponent;->newLoader(Ljava/io/File;)Lcom/stryker/terminal/component/config/IConfigureLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/stryker/terminal/component/config/IConfigureLoader;->loadConfigure()Lcom/stryker/terminal/component/config/NeoConfigureFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->getVisitor()Lt4/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/profile/NeoProfile;->onConfigLoaded(Lt4/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parse configuration failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Profile"

    invoke-virtual {v1, v0, p1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method
