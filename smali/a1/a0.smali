.class public final La1/a0;
.super Lo1/d;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lz0/f$a;
.implements Lz0/f$b;


# static fields
.field private static final l:Lz0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$a<",
            "+",
            "Ln1/f;",
            "Ln1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lz0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/a$a<",
            "+",
            "Ln1/f;",
            "Ln1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lb1/e;

.field private g:Ln1/f;

.field private k:La1/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln1/e;->c:Lz0/a$a;

    sput-object v0, La1/a0;->l:Lz0/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lb1/e;)V
    .locals 1

    .line 1
    sget-object v0, La1/a0;->l:Lz0/a$a;

    invoke-direct {p0}, Lo1/d;-><init>()V

    iput-object p1, p0, La1/a0;->a:Landroid/content/Context;

    iput-object p2, p0, La1/a0;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb1/e;

    iput-object p1, p0, La1/a0;->f:Lb1/e;

    invoke-virtual {p3}, Lb1/e;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, La1/a0;->d:Ljava/util/Set;

    iput-object v0, p0, La1/a0;->c:Lz0/a$a;

    return-void
.end method

.method static bridge synthetic N0(La1/a0;)La1/z;
    .locals 0

    iget-object p0, p0, La1/a0;->k:La1/z;

    return-object p0
.end method

.method static bridge synthetic O0(La1/a0;Lo1/l;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lo1/l;->d()Ly0/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ly0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lo1/l;->e()Lb1/l0;

    move-result-object p1

    invoke-static {p1}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb1/l0;

    .line 4
    invoke-virtual {p1}, Lb1/l0;->d()Ly0/a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ly0/a;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, La1/a0;->k:La1/z;

    .line 7
    invoke-interface {p1, v0}, La1/z;->b(Ly0/a;)V

    iget-object p0, p0, La1/a0;->g:Ln1/f;

    .line 8
    invoke-interface {p0}, Lz0/a$f;->b()V

    return-void

    :cond_0
    iget-object v0, p0, La1/a0;->k:La1/z;

    .line 9
    invoke-virtual {p1}, Lb1/l0;->e()Lb1/j;

    move-result-object p1

    iget-object v1, p0, La1/a0;->d:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, La1/z;->a(Lb1/j;Ljava/util/Set;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, La1/a0;->k:La1/z;

    .line 11
    invoke-interface {p1, v0}, La1/z;->b(Ly0/a;)V

    .line 12
    :goto_0
    iget-object p0, p0, La1/a0;->g:Ln1/f;

    .line 13
    invoke-interface {p0}, Lz0/a$f;->b()V

    return-void
.end method


# virtual methods
.method public final P0(La1/z;)V
    .locals 9

    .line 1
    iget-object v0, p0, La1/a0;->g:Ln1/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz0/a$f;->b()V

    :cond_0
    iget-object v0, p0, La1/a0;->f:Lb1/e;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb1/e;->i(Ljava/lang/Integer;)V

    iget-object v2, p0, La1/a0;->c:Lz0/a$a;

    iget-object v3, p0, La1/a0;->a:Landroid/content/Context;

    iget-object v0, p0, La1/a0;->b:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, La1/a0;->f:Lb1/e;

    .line 4
    invoke-virtual {v5}, Lb1/e;->f()Ln1/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 5
    invoke-virtual/range {v2 .. v8}, Lz0/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lb1/e;Ljava/lang/Object;Lz0/f$a;Lz0/f$b;)Lz0/a$f;

    move-result-object v0

    iput-object v0, p0, La1/a0;->g:Ln1/f;

    iput-object p1, p0, La1/a0;->k:La1/z;

    iget-object p1, p0, La1/a0;->d:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, La1/a0;->g:Ln1/f;

    .line 8
    invoke-interface {p0}, Ln1/f;->p()V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, La1/a0;->b:Landroid/os/Handler;

    new-instance v0, La1/x;

    invoke-direct {v0, p0}, La1/x;-><init>(La1/a0;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, La1/a0;->g:Ln1/f;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lz0/a$f;->b()V

    :cond_0
    return-void
.end method

.method public final a(Ly0/a;)V
    .locals 0

    iget-object p0, p0, La1/a0;->k:La1/z;

    invoke-interface {p0, p1}, La1/z;->b(Ly0/a;)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    iget-object p0, p0, La1/a0;->g:Ln1/f;

    invoke-interface {p0}, Lz0/a$f;->b()V

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, La1/a0;->g:Ln1/f;

    invoke-interface {p1, p0}, Ln1/f;->d(Lo1/f;)V

    return-void
.end method

.method public final f0(Lo1/l;)V
    .locals 2

    iget-object v0, p0, La1/a0;->b:Landroid/os/Handler;

    new-instance v1, La1/y;

    invoke-direct {v1, p0, p1}, La1/y;-><init>(La1/a0;Lo1/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
