.class public final Lc7/t1;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/a0;

.field public static final b:Lkotlinx/coroutines/internal/a0;

.field private static final c:Lkotlinx/coroutines/internal/a0;

.field private static final d:Lkotlinx/coroutines/internal/a0;

.field private static final e:Lkotlinx/coroutines/internal/a0;

.field private static final f:Lc7/v0;

.field private static final g:Lc7/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/a0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc7/t1;->a:Lkotlinx/coroutines/internal/a0;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/a0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc7/t1;->b:Lkotlinx/coroutines/internal/a0;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/a0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc7/t1;->c:Lkotlinx/coroutines/internal/a0;

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/a0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc7/t1;->d:Lkotlinx/coroutines/internal/a0;

    .line 5
    new-instance v0, Lkotlinx/coroutines/internal/a0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/a0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc7/t1;->e:Lkotlinx/coroutines/internal/a0;

    .line 6
    new-instance v0, Lc7/v0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc7/v0;-><init>(Z)V

    sput-object v0, Lc7/t1;->f:Lc7/v0;

    .line 7
    new-instance v0, Lc7/v0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc7/v0;-><init>(Z)V

    sput-object v0, Lc7/t1;->g:Lc7/v0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/a0;
    .locals 1

    sget-object v0, Lc7/t1;->a:Lkotlinx/coroutines/internal/a0;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/a0;
    .locals 1

    sget-object v0, Lc7/t1;->c:Lkotlinx/coroutines/internal/a0;

    return-object v0
.end method

.method public static final synthetic c()Lc7/v0;
    .locals 1

    sget-object v0, Lc7/t1;->g:Lc7/v0;

    return-object v0
.end method

.method public static final synthetic d()Lc7/v0;
    .locals 1

    sget-object v0, Lc7/t1;->f:Lc7/v0;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/a0;
    .locals 1

    sget-object v0, Lc7/t1;->e:Lkotlinx/coroutines/internal/a0;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/a0;
    .locals 1

    sget-object v0, Lc7/t1;->d:Lkotlinx/coroutines/internal/a0;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lc7/g1;

    if-eqz v0, :cond_0

    new-instance v0, Lc7/h1;

    check-cast p0, Lc7/g1;

    invoke-direct {v0, p0}, Lc7/h1;-><init>(Lc7/g1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lc7/h1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lc7/h1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lc7/h1;->a:Lc7/g1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
