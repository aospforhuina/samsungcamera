.class public Lv4/i;
.super Ljava/lang/Object;
.source "SamsungAnalytics.java"


# static fields
.field private static b:Lv4/i;


# instance fields
.field private a:Lw4/b;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lv4/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lv4/i;->a:Lw4/b;

    .line 3
    invoke-static {p1, p2}, Lz4/c;->c(Landroid/app/Application;Lv4/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lw4/b;

    invoke-direct {v0, p1, p2}, Lw4/b;-><init>(Landroid/app/Application;Lv4/c;)V

    iput-object v0, p0, Lv4/i;->a:Lw4/b;

    :cond_0
    return-void
.end method

.method public static b()Lv4/i;
    .locals 1

    .line 1
    sget-object v0, Lv4/i;->b:Lv4/i;

    if-nez v0, :cond_0

    const-string v0, "call after setConfiguration() method"

    .line 2
    invoke-static {v0}, Lk5/d;->s(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lk5/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0}, Lv4/i;->c(Landroid/app/Application;Lv4/c;)Lv4/i;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lv4/i;->b:Lv4/i;

    return-object v0
.end method

.method private static c(Landroid/app/Application;Lv4/c;)Lv4/i;
    .locals 2

    .line 1
    invoke-static {}, Lv4/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lv4/i;->e(Landroid/app/Application;Lv4/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    const-class v0, Lv4/i;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0, p1}, Lv4/i;->e(Landroid/app/Application;Lv4/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, Lv4/j;->a(Lv4/c;)Lv4/i;

    move-result-object v1

    sput-object v1, Lv4/i;->b:Lv4/i;

    .line 5
    :cond_1
    invoke-static {}, Lv4/i;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lv4/i;

    invoke-direct {v1, p0, p1}, Lv4/i;-><init>(Landroid/app/Application;Lv4/c;)V

    sput-object v1, Lv4/i;->b:Lv4/i;

    .line 7
    invoke-static {v1, p1}, Lv4/j;->b(Lv4/i;Lv4/c;)V

    .line 8
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    sget-object p0, Lv4/i;->b:Lv4/i;

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static d()Z
    .locals 1

    sget-object v0, Lv4/i;->b:Lv4/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lv4/i;->a:Lw4/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static e(Landroid/app/Application;Lv4/c;)Z
    .locals 1

    .line 1
    invoke-static {}, Lv4/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lv4/i;->b:Lv4/i;

    iget-object v0, v0, Lv4/i;->a:Lw4/b;

    .line 3
    invoke-virtual {v0}, Lw4/b;->p()Lv4/c;

    move-result-object v0

    .line 4
    invoke-static {p0, v0, p1}, Lk5/d;->m(Landroid/content/Context;Lv4/c;Lv4/c;)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/app/Application;Lv4/c;)V
    .locals 0

    invoke-static {p0, p1}, Lv4/i;->c(Landroid/app/Application;Lv4/c;)Lv4/i;

    return-void
.end method


# virtual methods
.method public a()Lv4/i;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lv4/i;->a:Lw4/b;

    invoke-virtual {v0}, Lw4/b;->n()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lk5/b;->e(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method

.method public f(Ljava/util/Map;)V
    .locals 1
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
    :try_start_0
    iget-object v0, p0, Lv4/i;->a:Lw4/b;

    invoke-virtual {v0, p1}, Lw4/b;->w(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lk5/b;->e(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lv4/i;->a:Lw4/b;

    invoke-virtual {p0, p1}, Lw4/b;->y(Ljava/util/Map;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/16 p0, -0x64

    return p0
.end method
