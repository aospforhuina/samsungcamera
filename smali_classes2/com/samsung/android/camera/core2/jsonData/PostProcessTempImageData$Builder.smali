.class public Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;
.super Ljava/lang/Object;
.source "PostProcessTempImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:D

.field public b:I

.field public c:Landroid/util/Size;

.field public d:I

.field public e:I

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;->a:D

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;",
            ">;)",
            "Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData;-><init>(Lcom/samsung/android/camera/core2/jsonData/PostProcessTempImageData$Builder;Lr3/b;)V

    return-object p1
.end method
