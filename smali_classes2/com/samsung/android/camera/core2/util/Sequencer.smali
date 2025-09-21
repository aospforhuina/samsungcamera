.class public Lcom/samsung/android/camera/core2/util/Sequencer;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;,
        Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;,
        Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;,
        Lcom/samsung/android/camera/core2/util/Sequencer$Step;,
        Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;
    }
.end annotation


# static fields
.field private static final i:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

.field private b:Z

.field private c:J

.field private d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

.field private e:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

.field private f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "Sequencer"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/Sequencer;->i:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->c:J

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    const-string v0, "configuration"

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "steps"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->e(Ljava/util/Collection;ILjava/lang/String;)Ljava/util/Collection;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->a:Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/Sequencer;->n(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/util/Sequencer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/Sequencer;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/Sequencer;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->j()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/camera/core2/util/t2;

    invoke-direct {v2, v1}, Lcom/samsung/android/camera/core2/util/t2;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;)V

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->k(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->r()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->g()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private f()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a(Lcom/samsung/android/camera/core2/util/Sequencer$Step;)Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 2

    const-string v0, "completeSequence"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->p(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/camera/core2/util/r2;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/util/r2;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->j()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->k(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->e:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    return-void
.end method

.method private j()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;
    .locals 8

    .line 1
    new-instance v7, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->a:Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;->b()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->c:J

    iget-object v4, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->e:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->a:Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;->a(Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;I)Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    move-result-object p0

    :goto_0
    move-object v5, p0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;-><init>(Ljava/lang/String;JLcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;Lcom/samsung/android/camera/core2/util/Sequencer$Step;Lcom/samsung/android/camera/core2/util/z2;)V

    return-object v7
.end method

.method private k(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;",
            ">;",
            "Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/camera/core2/util/p2;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/camera/core2/util/p2;-><init>(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic m(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->e:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic n(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, " - %s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->a:Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

    .line 2
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const-string p0, "%s(%d) %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/camera/core2/util/w2;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/camera/core2/util/w2;-><init>(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/util/Sequencer;->i:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private r()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->h()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "progressStep"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "Last step %s[%d]"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    return v3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->a:Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;->a(Lcom/samsung/android/camera/core2/util/Sequencer$Configuration;I)Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    move-result-object v0

    .line 5
    iget-object v5, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "First step %s[%d]"

    invoke-static {v5, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camera/core2/util/Sequencer;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v1, "%s[%d] -> %s[%d]"

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camera/core2/util/Sequencer;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    new-instance v1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$Step;Lcom/samsung/android/camera/core2/util/a3;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/camera/core2/util/u2;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/util/u2;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->j()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->k(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    return v4
.end method


# virtual methods
.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "abortSequence"

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->p(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/camera/core2/util/q2;

    invoke-direct {v1, v0}, Lcom/samsung/android/camera/core2/util/q2;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->j()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->k(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->e:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/Sequencer;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "completeStep"

    .line 2
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v2, "step %s[%d], stepData %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/Sequencer;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/camera/core2/util/v2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/util/v2;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->e()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->d:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized s()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->d()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "restartSequence"

    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/Sequencer;->p(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->d()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->v()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->g:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v()Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->b:Z

    .line 3
    iget-wide v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->c:J

    .line 4
    new-instance v1, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->e:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceBundle;

    const-string/jumbo v1, "startSequence"

    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/util/Sequencer;->p(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer;->f:Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/camera/core2/util/s2;

    invoke-direct {v2, v1}, Lcom/samsung/android/camera/core2/util/s2;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$SequenceCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->j()Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/camera/core2/util/Sequencer;->k(Ljava/util/function/Consumer;Lcom/samsung/android/camera/core2/util/Sequencer$SequenceInfo;)V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
