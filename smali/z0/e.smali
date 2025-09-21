.class public abstract Lz0/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lz0/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lz0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final d:Lz0/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:La1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La1/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lz0/f;

.field private final i:La1/l;

.field protected final j:Lcom/google/android/gms/common/api/internal/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lz0/a;Lz0/a$d;Lz0/e$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lz0/a<",
            "TO;>;TO;",
            "Lz0/e$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 2
    invoke-static {p3, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 3
    invoke-static {p5, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lz0/e;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Lf1/f;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    iput-object v1, p0, Lz0/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lz0/e;->c:Lz0/a;

    iput-object p4, p0, Lz0/e;->d:Lz0/a$d;

    .line 8
    iget-object p1, p5, Lz0/e$a;->b:Landroid/os/Looper;

    iput-object p1, p0, Lz0/e;->f:Landroid/os/Looper;

    .line 9
    invoke-static {p3, p4, v1}, La1/b;->a(Lz0/a;Lz0/a$d;Ljava/lang/String;)La1/b;

    move-result-object p1

    iput-object p1, p0, Lz0/e;->e:La1/b;

    .line 10
    new-instance p3, La1/p;

    invoke-direct {p3, p0}, La1/p;-><init>(Lz0/e;)V

    iput-object p3, p0, Lz0/e;->h:Lz0/f;

    iget-object p3, p0, Lz0/e;->a:Landroid/content/Context;

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/common/api/internal/b;->x(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p3

    iput-object p3, p0, Lz0/e;->j:Lcom/google/android/gms/common/api/internal/b;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/b;->m()I

    move-result p4

    iput p4, p0, Lz0/e;->g:I

    .line 13
    iget-object p4, p5, Lz0/e$a;->a:La1/l;

    iput-object p4, p0, Lz0/e;->i:La1/l;

    if-eqz p2, :cond_1

    .line 14
    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 16
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/f;->u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/b;La1/b;)V

    .line 17
    :cond_1
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/b;->b(Lz0/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz0/a;Lz0/a$d;Lz0/e$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz0/a<",
            "TO;>;TO;",
            "Lz0/e$a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lz0/e;-><init>(Landroid/content/Context;Landroid/app/Activity;Lz0/a;Lz0/a$d;Lz0/e$a;)V

    return-void
.end method

.method private final j(ILcom/google/android/gms/common/api/internal/c;)Lp1/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lz0/a$b;",
            ">(I",
            "Lcom/google/android/gms/common/api/internal/c<",
            "TA;TTResult;>;)",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lp1/f;

    invoke-direct {v6}, Lp1/f;-><init>()V

    iget-object v0, p0, Lz0/e;->j:Lcom/google/android/gms/common/api/internal/b;

    iget-object v5, p0, Lz0/e;->i:La1/l;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/b;->D(Lz0/e;ILcom/google/android/gms/common/api/internal/c;Lp1/f;La1/l;)V

    .line 3
    invoke-virtual {v6}, Lp1/f;->a()Lp1/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected b()Lb1/e$a;
    .locals 3

    .line 1
    new-instance v0, Lb1/e$a;

    invoke-direct {v0}, Lb1/e$a;-><init>()V

    iget-object v1, p0, Lz0/e;->d:Lz0/a$d;

    instance-of v2, v1, Lz0/a$d$b;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lz0/a$d$b;

    .line 3
    invoke-interface {v1}, Lz0/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lz0/e;->d:Lz0/a$d;

    .line 6
    instance-of v2, v1, Lz0/a$d$a;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lz0/a$d$a;

    invoke-interface {v1}, Lz0/a$d$a;->b()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lb1/e$a;->d(Landroid/accounts/Account;)Lb1/e$a;

    iget-object v1, p0, Lz0/e;->d:Lz0/a$d;

    .line 9
    instance-of v2, v1, Lz0/a$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Lz0/a$d$b;

    .line 11
    invoke-interface {v1}, Lz0/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->s()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 15
    :goto_1
    invoke-virtual {v0, v1}, Lb1/e$a;->c(Ljava/util/Collection;)Lb1/e$a;

    iget-object v1, p0, Lz0/e;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb1/e$a;->e(Ljava/lang/String;)Lb1/e$a;

    iget-object p0, p0, Lz0/e;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb1/e$a;->b(Ljava/lang/String;)Lb1/e$a;

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/internal/c;)Lp1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lz0/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/c<",
            "TA;TTResult;>;)",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lz0/e;->j(ILcom/google/android/gms/common/api/internal/c;)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/google/android/gms/common/api/internal/c;)Lp1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lz0/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/c<",
            "TA;TTResult;>;)",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lz0/e;->j(ILcom/google/android/gms/common/api/internal/c;)Lp1/e;

    move-result-object p0

    return-object p0
.end method

.method public final e()La1/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La1/b<",
            "TO;>;"
        }
    .end annotation

    iget-object p0, p0, Lz0/e;->e:La1/b;

    return-object p0
.end method

.method protected f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz0/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lz0/e;->g:I

    return p0
.end method

.method public final h(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/m;)Lz0/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/m<",
            "TO;>;)",
            "Lz0/a$f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lz0/e;->b()Lb1/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lb1/e$a;->a()Lb1/e;

    move-result-object v4

    iget-object v0, p0, Lz0/e;->c:Lz0/a;

    .line 2
    invoke-virtual {v0}, Lz0/a;->a()Lz0/a$a;

    move-result-object v0

    invoke-static {v0}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz0/a$a;

    iget-object v2, p0, Lz0/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lz0/e;->d:Lz0/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    .line 3
    invoke-virtual/range {v1 .. v7}, Lz0/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;Lz0/f$a;Lz0/f$b;)Lz0/a$f;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lz0/e;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    instance-of p2, p1, Lb1/c;

    if-eqz p2, :cond_0

    .line 6
    move-object p2, p1

    check-cast p2, Lb1/c;

    invoke-virtual {p2, p0}, Lb1/c;->O(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    instance-of p2, p1, La1/i;

    if-eqz p2, :cond_1

    .line 8
    move-object p2, p1

    check-cast p2, La1/i;

    invoke-virtual {p2, p0}, La1/i;->r(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final i(Landroid/content/Context;Landroid/os/Handler;)La1/a0;
    .locals 1

    new-instance v0, La1/a0;

    invoke-virtual {p0}, Lz0/e;->b()Lb1/e$a;

    move-result-object p0

    invoke-virtual {p0}, Lb1/e$a;->a()Lb1/e;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, La1/a0;-><init>(Landroid/content/Context;Landroid/os/Handler;Lb1/e;)V

    return-object v0
.end method
