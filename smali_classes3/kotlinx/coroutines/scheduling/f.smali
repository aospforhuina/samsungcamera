.class public Lkotlinx/coroutines/scheduling/f;
.super Lc7/c1;
.source "Dispatcher.kt"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:J

.field private final f:Ljava/lang/String;

.field private g:Lkotlinx/coroutines/scheduling/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc7/c1;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/scheduling/f;->b:I

    .line 3
    iput p2, p0, Lkotlinx/coroutines/scheduling/f;->c:I

    .line 4
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/f;->d:J

    .line 5
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/f;->f:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/f;->y()Lkotlinx/coroutines/scheduling/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/f;->g:Lkotlinx/coroutines/scheduling/a;

    return-void
.end method

.method private final y()Lkotlinx/coroutines/scheduling/a;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/scheduling/a;

    iget v1, p0, Lkotlinx/coroutines/scheduling/f;->b:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/f;->c:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/f;->d:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/f;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public dispatch(Ln6/g;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->g:Lkotlinx/coroutines/scheduling/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->k(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public dispatchYield(Ln6/g;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->g:Lkotlinx/coroutines/scheduling/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->k(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final z(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/f;->g:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/a;->h(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method
