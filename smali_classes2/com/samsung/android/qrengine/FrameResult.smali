.class public Lcom/samsung/android/qrengine/FrameResult;
.super Ljava/lang/Object;
.source "FrameResult.java"


# instance fields
.field public barcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeData;",
            ">;"
        }
    .end annotation
.end field

.field public frameData:Lcom/samsung/android/qrengine/FrameData;

.field public frameId:J

.field public newBarcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeData;",
            ">;"
        }
    .end annotation
.end field

.field public removedBarcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeData;",
            ">;"
        }
    .end annotation
.end field

.field public updatedBarcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/samsung/android/qrengine/FrameResult;->frameId:J

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/qrengine/FrameResult;->barcodes:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/qrengine/FrameResult;->newBarcodes:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/qrengine/FrameResult;->removedBarcodes:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/qrengine/FrameResult;->updatedBarcodes:Ljava/util/List;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/qrengine/FrameResult;->frameData:Lcom/samsung/android/qrengine/FrameData;

    return-void
.end method


# virtual methods
.method public addFrameData(Lcom/samsung/android/qrengine/FrameData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/qrengine/FrameResult;->frameData:Lcom/samsung/android/qrengine/FrameData;

    return-void
.end method
