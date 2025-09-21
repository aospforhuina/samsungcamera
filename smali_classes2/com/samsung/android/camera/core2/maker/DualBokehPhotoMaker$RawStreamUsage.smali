.class final enum Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;
.super Ljava/lang/Enum;
.source "DualBokehPhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RawStreamUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

.field public static final enum b:Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

.field private static final synthetic c:[Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    const-string v1, "CONFIDENCE_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;->a:Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    const-string v3, "NIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;->b:Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;->c:[Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;->c:[Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/maker/DualBokehPhotoMaker$RawStreamUsage;

    return-object v0
.end method
