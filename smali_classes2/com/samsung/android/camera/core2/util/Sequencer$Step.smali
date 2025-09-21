.class public Lcom/samsung/android/camera/core2/util/Sequencer$Step;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/Sequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Step"
.end annotation


# static fields
.field public static final e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;-><init>(Ljava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core2/util/Sequencer$Step;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->b:I

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/util/Sequencer$Step;Lcom/samsung/android/camera/core2/util/a3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;-><init>(Lcom/samsung/android/camera/core2/util/Sequencer$Step;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->b:I

    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    .line 6
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZ[Ljava/lang/String;Lcom/samsung/android/camera/core2/util/a3;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;-><init>(Ljava/lang/String;IZ[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/util/Sequencer$Step;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->f()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/util/Sequencer$Step;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->i()V

    return-void
.end method

.method private f()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->b:I

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->b:I

    iget v3, p1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->b:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    iget-boolean v3, p1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public g()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->e:Lcom/samsung/android/camera/core2/util/Sequencer$Step;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/Sequencer$Step;->c:Ljava/util/Set;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
