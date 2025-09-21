.class public Le6/c;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6/c$a;
    }
.end annotation


# static fields
.field private static a:Le6/a; = null

.field private static b:Landroid/os/Bundle; = null

.field private static c:Ljava/lang/Thread$UncaughtExceptionHandler; = null

.field private static d:Z = false

.field private static e:Le6/c$a;

.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le6/c$a;->a:Le6/c$a;

    sput-object v0, Le6/c;->e:Le6/c$a;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Le6/c;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Le6/c;->a:Le6/a;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lg6/a;->a:Ljava/lang/String;

    const-string v0, "UncaughtExceptionLogging can\'t be enabled because Configuration is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Le6/a;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Le6/c;->a:Le6/a;

    invoke-virtual {v1}, Le6/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc6/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Le6/c;->b()Le6/c$a;

    move-result-object v0

    sget-object v1, Le6/c$a;->a:Le6/c$a;

    if-ne v0, v1, :cond_1

    const-string p0, "You first have to call configuration method"

    .line 5
    invoke-static {p0}, Lc6/a;->e(Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    sget-boolean v0, Le6/c;->d:Z

    if-eqz v0, :cond_2

    const-string p0, "UncaughtExceptionLogging is already enabled"

    .line 7
    invoke-static {p0}, Lc6/a;->e(Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Le6/c;->d:Z

    .line 9
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Le6/c;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    new-instance v0, Le6/b;

    sget-object v1, Le6/c;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v2, Le6/c;->a:Le6/a;

    invoke-direct {v0, p0, v1, v2}, Le6/b;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Le6/a;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to enableUncaughtExceptionLogging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc6/a;->b(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static b()Le6/c$a;
    .locals 1

    sget-object v0, Le6/c;->e:Le6/c$a;

    return-object v0
.end method

.method private static c(Le6/a;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Le6/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le6/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld6/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Le6/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceAgreeType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Le6/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Le6/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackingId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lg6/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkType"

    const-string v2, "S"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Le6/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Le6/a;->f()Z

    move-result p0

    const-string v1, "wifiOnly"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "generated SR object"

    .line 11
    invoke-static {p0}, Lc6/a;->c(Ljava/lang/String;)I

    return-object v0
.end method

.method private static d()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Le6/c;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    sget-object v1, Le6/c;->a:Le6/a;

    invoke-static {v1}, Le6/c;->c(Le6/a;)Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Le6/c;->b:Landroid/os/Bundle;

    .line 3
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v1

    new-instance v2, Lf6/b;

    sget-object v3, Le6/c;->a:Le6/a;

    sget-object v4, Le6/c;->b:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4}, Lf6/b;-><init>(Le6/a;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lb6/c;->a(Lb6/b;)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to setConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc6/a;->b(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static e(Le6/d;)V
    .locals 4

    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v0

    new-instance v1, Lf6/a;

    sget-object v2, Le6/c;->a:Le6/a;

    sget-object v3, Le6/c;->b:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, p0}, Lf6/a;-><init>(Le6/a;Landroid/os/Bundle;Le6/d;)V

    invoke-interface {v0, v1}, Lb6/c;->a(Lb6/b;)V

    return-void
.end method

.method static f(Le6/d;)V
    .locals 0

    .line 1
    invoke-static {}, Le6/c;->d()V

    .line 2
    invoke-static {p0}, Le6/c;->e(Le6/d;)V

    return-void
.end method

.method private static g(Le6/c$a;)V
    .locals 1

    .line 1
    sput-object p0, Le6/c;->e:Le6/c$a;

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setConfiguration type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Le6/c;->e:Le6/c$a;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc6/a;->a(Ljava/lang/String;)I

    return-void
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lc6/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Le6/c;->b()Le6/c$a;

    move-result-object v0

    sget-object v1, Le6/c$a;->c:Le6/c$a;

    if-ne v0, v1, :cond_0

    const-string p0, "setDefaultConfiguration can\'t be used because CustomLogging is using"

    .line 3
    invoke-static {p0}, Lc6/a;->e(Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object v0, Le6/c;->a:Le6/a;

    if-eqz v0, :cond_1

    const-string p0, "setDefaultConfiguration is already set"

    .line 5
    invoke-static {p0}, Lc6/a;->e(Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {p0}, Ld6/a;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object p0, Lg6/a;->a:Ljava/lang/String;

    const-string p1, "It is not supported : NO_DMA"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    new-instance v0, Le6/a;

    invoke-direct {v0, p0}, Le6/a;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, p1}, Le6/a;->j(Ljava/lang/String;)Le6/a;

    move-result-object p0

    const-string p1, "D"

    .line 10
    invoke-virtual {p0, p1}, Le6/a;->i(Ljava/lang/String;)Le6/a;

    move-result-object p0

    sput-object p0, Le6/c;->a:Le6/a;

    .line 11
    sget-object p0, Le6/c$a;->b:Le6/c$a;

    invoke-static {p0}, Le6/c;->g(Le6/c$a;)V

    .line 12
    invoke-static {}, Le6/c;->d()V

    return-void
.end method
