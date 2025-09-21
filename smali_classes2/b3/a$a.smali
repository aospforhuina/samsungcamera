.class public final Lb3/a$a;
.super Ljava/lang/Object;
.source "DeepSky.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lb3/a$a;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lk6/k;->a:Lk6/k$a;

    const-string v1, "ro.build.version.sep"

    const-string v2, ""

    .line 2
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 3
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "130500"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_3

    return p0

    .line 4
    :cond_3
    sget-object v1, Lk6/q;->a:Lk6/q;

    .line 5
    :goto_2
    invoke-static {v1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    sget-object v2, Lk6/k;->a:Lk6/k$a;

    invoke-static {v1}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    :goto_3
    invoke-static {v1}, Lk6/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isOcrSupported "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeepSkyLibrary"

    invoke-static {v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 8
    :cond_4
    sget-object p0, Ll3/g;->a:Ll3/g;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Ll3/g;->b(Ll3/g;Landroid/content/Context;Lk4/n;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Context must not be null."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lb3/a;->b()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DeepSkyLibrary"

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lb3/a$a;->a(Landroid/content/Context;)Z

    move-result p0

    .line 3
    sget-object p1, Lb3/a;->h:Lb3/a$a;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lb3/a;->d(Ljava/lang/Boolean;)V

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isVisionTextSupported Ocr isSupported"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isVisionTextSupported "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final c(Landroid/content/Context;)Lb3/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lb3/a;->a()Lb3/a;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lb3/a;->a()Lb3/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb3/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb3/a;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/g;)V

    .line 3
    sget-object p1, Lb3/a;->h:Lb3/a$a;

    invoke-static {v0}, Lb3/a;->c(Lb3/a;)V

    const-string p1, "DeepSkyLibrary"

    const-string v1, "Version = 2.3.6"

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
