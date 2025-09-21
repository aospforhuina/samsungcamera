.class public Lw4/b;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lv4/c;

.field private final c:Landroid/content/Context;

.field private d:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Lv4/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lw4/b;->e:I

    .line 3
    iput-object p1, p0, Lw4/b;->a:Landroid/app/Application;

    .line 4
    iput-object p2, p0, Lw4/b;->b:Lv4/c;

    .line 5
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lw4/b;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Lv4/c;->k()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lw4/b$a;

    invoke-direct {p1, p0}, Lw4/b$a;-><init>(Lw4/b;)V

    invoke-virtual {p2, p1}, Lv4/c;->o(Lv4/k;)Lv4/c;

    .line 8
    :cond_0
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object p1

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0, p2}, Lw4/b$b;-><init>(Lw4/b;Lv4/c;)V

    invoke-interface {p1, v0}, Lb6/c;->a(Lb6/b;)V

    const-string p0, "Tracker"

    const-string p1, "Tracker start:6.05.055"

    .line 9
    invoke-static {p0, p1}, Lk5/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auidType"

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    iget-object v0, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {v0, v2}, Lv4/c;->l(I)V

    .line 5
    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {p0, p1}, Lv4/c;->m(Ljava/lang/String;)Lv4/c;

    return-void
.end method

.method private B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw4/b;->a:Landroid/app/Application;

    invoke-static {v0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    sget-object v1, Lx4/c;->d:Lx4/c;

    const-string v2, "dom"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx4/c;->b(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lx4/b;->d:Lx4/b;

    const-string/jumbo v2, "uri"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx4/b;->b(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lx4/b;->f:Lx4/b;

    const-string v2, "bat-uri"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lx4/b;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lz4/b;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lw4/b;->a:Landroid/app/Application;

    iget-object v1, p0, Lw4/b;->b:Lv4/c;

    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v2

    iget-object v3, p0, Lw4/b;->c:Landroid/content/Context;

    .line 7
    invoke-static {v3}, Ly4/a;->b(Landroid/content/Context;)Ly4/a;

    move-result-object v3

    new-instance v4, Lw4/b$e;

    invoke-direct {v4, p0}, Lw4/b$e;-><init>(Lw4/b;)V

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lz4/b;->m(Landroid/content/Context;Lv4/c;Lb6/c;Ly4/a;Lw4/a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lw4/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw4/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lw4/b;)Z
    .locals 0

    invoke-direct {p0}, Lw4/b;->u()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lw4/b;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lw4/b;->a:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic d(Lw4/b;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 0

    invoke-direct {p0}, Lw4/b;->v()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lw4/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lw4/b;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lw4/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lw4/b;->A(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lw4/b;)V
    .locals 0

    invoke-direct {p0}, Lw4/b;->B()V

    return-void
.end method

.method static synthetic h(Lw4/b;)Z
    .locals 0

    invoke-direct {p0}, Lw4/b;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lw4/b;)V
    .locals 0

    invoke-direct {p0}, Lw4/b;->z()V

    return-void
.end method

.method static synthetic j(Lw4/b;)Z
    .locals 0

    invoke-direct {p0}, Lw4/b;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lw4/b;)Z
    .locals 0

    invoke-direct {p0}, Lw4/b;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lw4/b;)Lv4/c;
    .locals 0

    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    return-object p0
.end method

.method private m()Z
    .locals 3

    .line 1
    invoke-static {}, Lz4/b;->e()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {p0}, Lv4/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "did is empty"

    .line 3
    invoke-static {p0}, Lk5/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private o()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4
    :try_start_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    const-string v6, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 5
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const/16 v5, 0x3e

    int-to-long v9, v5

    rem-long/2addr v7, v9

    long-to-int v5, v7

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lk5/b;->e(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private q(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ld6/a;->c(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-string v3, "com.sec.spp.permission.TOKEN"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private r()I
    .locals 3

    .line 1
    iget v0, p0, Lw4/b;->e:I

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "current user is locked"

    .line 4
    invoke-static {v0}, Lk5/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lw4/b;->e:I

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {v0}, Lv4/c;->k()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lz4/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Device is not enabled for logging"

    .line 8
    invoke-static {v0}, Lk5/b;->a(Ljava/lang/String;)V

    .line 9
    iput v1, p0, Lw4/b;->e:I

    return v1

    .line 10
    :cond_1
    invoke-static {}, Lz4/b;->e()I

    move-result v0

    if-ne v1, v0, :cond_2

    const-string v0, "SenderType is None"

    .line 11
    invoke-static {v0}, Lk5/b;->a(Ljava/lang/String;)V

    .line 12
    iput v1, p0, Lw4/b;->e:I

    return v1

    .line 13
    :cond_2
    invoke-static {}, Lz4/b;->e()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 14
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lw4/b;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SamsungAnalytics2 need to define \'com.sec.spp.permission.TOKEN_XXXX\' permission in AndroidManifest"

    .line 15
    invoke-static {v0}, Lk5/d;->s(Ljava/lang/String;)V

    .line 16
    iput v1, p0, Lw4/b;->e:I

    return v1

    .line 17
    :cond_3
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lk5/d;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-direct {p0}, Lw4/b;->x()V

    :cond_4
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lw4/b;->e:I

    return v0
.end method

.method private declared-synchronized s()Z
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    .line 1
    :try_start_0
    iget v1, p0, Lw4/b;->e:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracker is not initialized, status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lw4/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk5/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v2

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lw4/b;->r()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    move v2, v1

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private t()Z
    .locals 0

    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {p0}, Lv4/c;->g()Lv4/k;

    move-result-object p0

    invoke-interface {p0}, Lv4/k;->a()Z

    move-result p0

    return p0
.end method

.method private u()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lw4/b;->a:Landroid/app/Application;

    invoke-static {v0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deviceId"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auidType"

    const/4 v3, -0x1

    .line 3
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {v2, v0}, Lv4/c;->l(I)V

    .line 6
    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    invoke-virtual {p0, v1}, Lv4/c;->m(Ljava/lang/String;)Lv4/c;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private v()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .line 1
    iget-object v0, p0, Lw4/b;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw4/b$f;

    invoke-direct {v0, p0}, Lw4/b$f;-><init>(Lw4/b;)V

    iput-object v0, p0, Lw4/b;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 3
    :cond_0
    iget-object p0, p0, Lw4/b;->d:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object p0
.end method

.method private x()V
    .locals 10

    .line 1
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lk5/d;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lw4/b;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    invoke-static {}, Lz4/b;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 3
    iget-object v0, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lk5/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-static {v2}, Ld6/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "None"

    if-eqz v3, :cond_1

    move-object v2, v4

    :cond_1
    const/4 v3, 0x0

    const-string v5, "sendCommonSuccess"

    .line 6
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "appVersion"

    .line 7
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    const-string v8, "sendCommonTime"

    .line 8
    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppVersion = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", prefAppVersion = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", beforeSendCommonTime = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", success = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lk5/b;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v4, 0x7

    .line 11
    invoke-static {v4, v6}, Lk5/d;->b(ILjava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez v3, :cond_4

    const/4 v3, 0x6

    .line 12
    invoke-static {v3, v6}, Lk5/d;->c(ILjava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "send app common"

    .line 13
    invoke-static {v3}, Lk5/b;->a(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    iget-object v0, p0, Lw4/b;->a:Landroid/app/Application;

    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    invoke-static {v0, v1, p0}, Lc5/d;->a(Landroid/content/Context;ILv4/c;)Lc5/b;

    move-result-object p0

    check-cast p0, Le5/b;

    .line 18
    invoke-virtual {p0}, Le5/b;->h()V

    :cond_4
    return-void
.end method

.method private z()V
    .locals 10

    .line 1
    iget-object v0, p0, Lw4/b;->a:Landroid/app/Application;

    const-string v1, "SATerms"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send previous agreement, timestamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lk5/b;->a(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v2

    new-instance v3, Lj5/a;

    iget-object v4, p0, Lw4/b;->b:Lv4/c;

    .line 9
    invoke-virtual {v4}, Lv4/c;->f()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lw4/b$g;

    invoke-direct {v9, p0, v0, v6}, Lw4/b$g;-><init>(Lw4/b;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lj5/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLb6/a;)V

    .line 10
    invoke-interface {v2, v3}, Lb6/c;->a(Lb6/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public n()V
    .locals 2

    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v0

    new-instance v1, Lw4/b$d;

    invoke-direct {v1, p0}, Lw4/b$d;-><init>(Lw4/b;)V

    invoke-interface {v0, v1}, Lb6/c;->a(Lb6/b;)V

    return-void
.end method

.method public p()Lv4/c;
    .locals 0

    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    return-object p0
.end method

.method public w(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lw4/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v0

    new-instance v1, Li5/c;

    iget-object v2, p0, Lw4/b;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Li5/c;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lb6/c;->a(Lb6/b;)V

    .line 3
    iget-object p1, p0, Lw4/b;->c:Landroid/content/Context;

    iget-object p0, p0, Lw4/b;->b:Lv4/c;

    invoke-static {p1, p0}, Lk5/d;->r(Landroid/content/Context;Lv4/c;)V

    :cond_0
    return-void
.end method

.method public y(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lw4/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb6/d;->b()Lb6/c;

    move-result-object v0

    new-instance v1, Lw4/b$c;

    invoke-direct {v1, p0, p1}, Lw4/b$c;-><init>(Lw4/b;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lb6/c;->a(Lb6/b;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
