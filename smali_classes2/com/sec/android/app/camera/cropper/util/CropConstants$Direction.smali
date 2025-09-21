.class public final enum Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;
.super Ljava/lang/Enum;
.source "CropConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/cropper/util/CropConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum LEFT:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum LEFT_BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum LEFT_TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum RIGHT:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum RIGHT_BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum RIGHT_TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

.field public static final enum TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->LEFT_TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v5, "RIGHT_TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->RIGHT_TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->RIGHT:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v9, "RIGHT_BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v11, "BOTTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v13, "LEFT_BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->LEFT_BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const-string v15, "LEFT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->LEFT:Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->$VALUES:[Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->$VALUES:[Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;

    return-object v0
.end method
