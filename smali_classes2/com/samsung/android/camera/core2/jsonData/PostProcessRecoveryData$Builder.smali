.class public Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;
.super Ljava/lang/Object;
.source "PostProcessRecoveryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:D

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$WatermarkData;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

.field public k:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->a:D

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;",
            ">;)",
            "Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->j:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;->k:Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$ImageFileData;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData;-><init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;Lr3/a;)V

    return-object p1
.end method
