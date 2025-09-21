.class public Ly3/c;
.super Ljava/lang/Object;
.source "RapidEngineScorerSync.java"


# static fields
.field private static final g:Ljava/lang/String; = "c"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:La4/b;

.field private c:La4/b;

.field private d:Lz3/g;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p0, Ly3/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rapid Engine Library version: 1.0.0.7 , BuildMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rm_a"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/os/Bundle;La4/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly3/c;->g(Landroid/content/Context;Landroid/os/Bundle;La4/b;)V

    return-void
.end method

.method public static synthetic b(La4/b;)V
    .locals 0

    invoke-static {p0}, Ly3/c;->f(La4/b;)V

    return-void
.end method

.method private c()Z
    .locals 3

    .line 1
    iget v0, p0, Ly3/c;->e:I

    iget p0, p0, Ly3/c;->f:I

    sub-int p0, v0, p0

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    .line 2
    sget-object v0, Ly3/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame: CurrentRejection rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x3e99999a    # 0.3f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const-string p0, " above threshold: 0.3..."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic f(La4/b;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, La4/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidMomentSync"

    const-string v2, "DeInit"

    invoke-static {v1, v0, v2}, Lb4/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, La4/b;->b()V

    .line 3
    invoke-static {}, Lb4/a;->a()V

    :cond_0
    return-void
.end method

.method private static synthetic g(Landroid/content/Context;Landroid/os/Bundle;La4/b;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, La4/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RapidMomentSync"

    const-string v2, "Init"

    invoke-static {v1, v0, v2}, Lb4/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2, p0, p1}, La4/b;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lb4/a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    sget-object v0, Ly3/c;->g:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Ly3/c;->a:Ljava/util/List;

    sget-object v1, Ly3/b;->a:Ly3/b;

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "deinit X"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    sget-object v0, Ly3/c;->g:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "processFrame: Updated thresholding logic"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "key_mode"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/rapidmomentengine/engines/a;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Ly3/c;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 4
    new-instance v4, Ly3/a;

    invoke-direct {v4, p1, p2}, Ly3/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    :cond_0
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/rapidmomentengine/engines/a;->e(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 6
    aget v1, p1, p2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Ly3/c;->a:Ljava/util/List;

    aget p2, p1, p2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La4/b;

    iput-object p2, p0, Ly3/c;->b:La4/b;

    :cond_1
    const/4 p2, 0x2

    .line 8
    aget v1, p1, p2

    if-eq v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Ly3/c;->a:Ljava/util/List;

    aget p1, p1, p2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La4/b;

    iput-object p1, p0, Ly3/c;->c:La4/b;

    :cond_2
    const-string p0, "init X"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(Lz3/d;)Lz3/e;
    .locals 11

    .line 1
    sget-object v0, Ly3/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz3/d;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, p0, Ly3/c;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ly3/c;->e:I

    .line 3
    invoke-static {p1}, Lz3/b;->a(Lz3/d;)Lz3/c;

    move-result-object v1

    .line 4
    invoke-static {}, Lb4/a;->b()J

    move-result-wide v3

    .line 5
    iget-object v5, p0, Ly3/c;->b:La4/b;

    invoke-virtual {v5, v1}, La4/b;->e(Lz3/c;)Lz3/g;

    move-result-object v5

    const-string v6, "RapidMomentSync"

    const-string v7, "EngineBlur"

    const-string v8, "Process"

    .line 6
    invoke-static {v3, v4, v6, v7, v8}, Lb4/a;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lz3/d;->g()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lz3/g;->o(J)V

    .line 8
    invoke-virtual {v1}, Lz3/c;->c()I

    move-result v3

    if-ne v3, v2, :cond_0

    const-wide v3, 0x407f400000000000L    # 500.0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4097700000000000L    # 1500.0

    .line 9
    :goto_0
    iget-wide v9, v5, Lz3/g;->a:D

    cmpg-double v7, v9, v3

    if-gez v7, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processFrame: blurScore - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lz3/g;->a:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", threshold: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", rejecting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz3/d;->g()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Ly3/c;->b:La4/b;

    invoke-virtual {p1}, La4/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lz3/g;->m(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ly3/c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget p1, p0, Ly3/c;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Ly3/c;->f:I

    const-string p0, "processFrame: Force accepting the frame.."

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v5}, Lz3/g;->i()V

    .line 16
    invoke-virtual {v5}, Lz3/g;->e()Lz3/e;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    invoke-virtual {v5}, Lz3/g;->e()Lz3/e;

    move-result-object p0

    return-object p0

    .line 18
    :cond_2
    new-instance v3, Lz3/g;

    invoke-direct {v3}, Lz3/g;-><init>()V

    .line 19
    invoke-virtual {p1}, Lz3/d;->g()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lz3/g;->o(J)V

    .line 20
    invoke-virtual {v3, v5}, Lz3/g;->h(Lz3/g;)V

    .line 21
    invoke-static {}, Lb4/a;->b()J

    move-result-wide v4

    .line 22
    iget-object v7, p0, Ly3/c;->c:La4/b;

    invoke-virtual {v7, v1}, La4/b;->e(Lz3/c;)Lz3/g;

    move-result-object v1

    const-string v7, "EngineDID"

    .line 23
    invoke-static {v4, v5, v6, v7, v8}, Lb4/a;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v1}, Lz3/g;->h(Lz3/g;)V

    .line 25
    invoke-static {}, Lb4/a;->b()J

    move-result-wide v4

    .line 26
    iget-object v1, p0, Ly3/c;->d:Lz3/g;

    if-eqz v1, :cond_3

    .line 27
    iget-object v8, p0, Ly3/c;->c:La4/b;

    check-cast v8, La4/a;

    invoke-interface {v8, v1, v3}, La4/a;->a(Lz3/g;Lz3/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processFrame: similar to previous selected frame. Rejecting "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lz3/d;->g()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Ly3/c;->c:La4/b;

    invoke-virtual {p1}, La4/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lz3/g;->m(Ljava/lang/String;)V

    :cond_3
    const-string p1, "Filter"

    .line 30
    invoke-static {v4, v5, v6, v7, p1}, Lb4/a;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ly3/c;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "processFrame: Force accepting the frame..."

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v3}, Lz3/g;->i()V

    .line 34
    :cond_4
    invoke-virtual {v3}, Lz3/g;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    iput-object v3, p0, Ly3/c;->d:Lz3/g;

    .line 36
    iget p1, p0, Ly3/c;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Ly3/c;->f:I

    .line 37
    :cond_5
    invoke-virtual {v3}, Lz3/g;->e()Lz3/e;

    move-result-object p0

    return-object p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ly3/c;->d:Lz3/g;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ly3/c;->e:I

    .line 3
    iput v0, p0, Ly3/c;->f:I

    return-void
.end method

.method public j()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ly3/c;->d:Lz3/g;

    .line 2
    sget-object v0, Ly3/c;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RM Drop ratio: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly3/c;->e:I

    iget v3, p0, Ly3/c;->f:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly3/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly3/c;->e:I

    if-lez v2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    iget p0, p0, Ly3/c;->f:I

    int-to-float p0, p0

    int-to-float v2, v2

    div-float/2addr p0, v2

    sub-float/2addr v3, p0

    .line 3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NA"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
