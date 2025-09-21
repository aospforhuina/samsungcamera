.class final Lcom/google/ar/core/h;
.super Lcom/google/ar/core/ArCoreApk;
.source "ArCoreApkImpl.java"


# static fields
.field private static final c:Lcom/google/ar/core/h;


# instance fields
.field a:Ljava/lang/Exception;

.field b:Z

.field private d:Z

.field private e:I

.field private f:J

.field private g:Lcom/google/ar/core/ArCoreApk$Availability;

.field private h:Z

.field private i:Lcom/google/ar/core/p;

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/h;

    invoke-direct {v0}, Lcom/google/ar/core/h;-><init>()V

    sput-object v0, Lcom/google/ar/core/h;->c:Lcom/google/ar/core/h;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/ArCoreApk;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/ar/core/h;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/ar/core/h;Lcom/google/ar/core/ArCoreApk$Availability;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/ar/core/h;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p1
.end method

.method private static a(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 9

    const-string v0, "ARCore-ArCoreApk"

    .line 2
    invoke-static {p0}, Lcom/google/ar/core/aj;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "Starting setup activity"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 5
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Setup activity launch failed"

    .line 6
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_0
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0
.end method

.method public static a()Lcom/google/ar/core/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ar/core/h;->c:Lcom/google/ar/core/h;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ar/core/h;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/google/ar/core/h;->h:Z

    return p1
.end method

.method private static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final c(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ar/core/h;->e(Landroid/content/Context;)V

    .line 2
    iget-boolean p0, p0, Lcom/google/ar/core/h;->k:Z

    return p0
.end method

.method private static d(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.ar.core"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-nez v1, :cond_1

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_0

    array-length p0, p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    :cond_0
    return v0

    :cond_1
    return v1

    :catch_0
    return v0
.end method

.method private final declared-synchronized e(Landroid/content/Context;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ar/core/h;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x80

    .line 5
    :try_start_2
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "com.google.ar.core"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.google.ar.core"

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "required"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ar/core/h;->k:Z

    const-string v2, "com.google.ar.core.min_apk_version"

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "com.google.ar.core.min_apk_version"

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/ar/core/h;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    .line 10
    :try_start_4
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 11
    const-class v0, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 12
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 13
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_4

    .line 14
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Application manifest must contain activity "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :cond_4
    :try_start_5
    iput-boolean v1, p0, Lcom/google/ar/core/h;->j:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 17
    :try_start_6
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package info"

    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :cond_5
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core.min_apk_version"

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Application manifest must contain meta-data com.google.ar.core"

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 20
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Could not load application package metadata"

    invoke-direct {v0, v1, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;)Lcom/google/ar/core/p;
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/h;->i:Lcom/google/ar/core/p;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/ar/core/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ar/core/p;-><init>(B)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ar/core/p;->a(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Lcom/google/ar/core/h;->i:Lcom/google/ar/core/p;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/ar/core/h;->i:Lcom/google/ar/core/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/h;->a:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput v1, p0, Lcom/google/ar/core/h;->e:I

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/google/ar/core/h;->d:Z

    .line 4
    iget-object v0, p0, Lcom/google/ar/core/h;->i:Lcom/google/ar/core/p;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/ar/core/p;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/ar/core/h;->i:Lcom/google/ar/core/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Landroid/content/Context;)Z
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/ar/core/h;->e(Landroid/content/Context;)V

    .line 9
    invoke-static {p1}, Lcom/google/ar/core/h;->d(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {p1}, Lcom/google/ar/core/h;->d(Landroid/content/Context;)I

    move-result p1

    iget p0, p0, Lcom/google/ar/core/h;->l:I

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/ar/core/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/ar/core/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/ar/core/h;->b()V

    .line 5
    invoke-static {p1}, Lcom/google/ar/core/aj;->a(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/FatalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :cond_1
    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/google/ar/core/h;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/google/ar/core/h;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/ar/core/h;->h:Z

    .line 10
    new-instance v0, Lcom/google/ar/core/aj;

    invoke-direct {v0, p0}, Lcom/google/ar/core/aj;-><init>(Lcom/google/ar/core/h;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/ar/core/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/google/ar/core/h;->d(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 14
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/ar/core/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/ar/core/h;->a(Landroid/content/Context;)Lcom/google/ar/core/p;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/ar/core/p;->a(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$a;)V

    .line 18
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/google/ar/core/h;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eqz p1, :cond_7

    .line 19
    monitor-exit p0

    return-object p1

    .line 20
    :cond_7
    iget-boolean p1, p0, Lcom/google/ar/core/h;->h:Z

    if-eqz p1, :cond_8

    .line 21
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_CHECKING:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :cond_8
    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "request not running but result is null?"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p0

    const-string p1, "ARCore-ArCoreApk"

    const-string v0, "Error while checking app details and ARCore status"

    .line 25
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p0
.end method

.method public final requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/google/ar/core/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    .line 32
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/ar/core/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    goto :goto_1

    .line 34
    :cond_1
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    .line 35
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ar/core/h;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    return-object p0
.end method

.method public final requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/ar/core/h;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/ar/core/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/ar/core/h;->b()V

    .line 4
    invoke-static {p1}, Lcom/google/ar/core/h;->a(Landroid/app/Activity;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/google/ar/core/h;->d:Z

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/ar/core/h;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_2

    const-string p2, "ARCore-ArCoreApk"

    const-string v1, "Clearing previous failure: "

    .line 8
    invoke-static {p2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lcom/google/ar/core/h;->a:Ljava/lang/Exception;

    goto :goto_0

    .line 10
    :cond_2
    instance-of p1, v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    if-nez p1, :cond_5

    .line 11
    instance-of p1, v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    if-nez p1, :cond_4

    .line 12
    instance-of p1, v0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_3

    .line 13
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/google/ar/core/h;->a:Ljava/lang/Exception;

    const-string p2, "Unexpected exception type"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_4
    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    throw v0

    .line 16
    :cond_5
    check-cast v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    throw v0

    .line 17
    :cond_6
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/google/ar/core/h;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long p2, v2, v4

    if-lez p2, :cond_7

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/google/ar/core/h;->e:I

    .line 20
    :cond_7
    iget p2, p0, Lcom/google/ar/core/h;->e:I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/ar/core/h;->e:I

    .line 21
    iput-wide v0, p0, Lcom/google/ar/core/h;->f:J

    const/4 v0, 0x2

    if-gt p2, v0, :cond_8

    .line 22
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/google/ar/core/InstallActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "message"

    .line 23
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "behavior"

    .line 24
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iput-boolean v2, p0, Lcom/google/ar/core/h;->d:Z

    .line 27
    sget-object p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALL_REQUESTED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    return-object p0

    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string p2, "Failed to launch InstallActivity"

    invoke-direct {p1, p2, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 29
    :cond_8
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string p1, "Requesting ARCore installation too rapidly."

    invoke-direct {p0, p1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_9
    new-instance p0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    invoke-direct {p0}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    throw p0
.end method
