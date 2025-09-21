.class public final enum Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
.super Ljava/lang/Enum;
.source "PictureDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/PictureDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PicType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field public static final enum b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field private static final synthetic f:[Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    new-instance v1, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->b:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    new-instance v3, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const-string v5, "SECOND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    new-instance v5, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const-string v7, "THIRD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->f:[Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->f:[Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object v0
.end method
