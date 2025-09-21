.class public final enum Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;
.super Ljava/lang/Enum;
.source "BokehUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/BokehUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BokehCallbackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum ERROR_DISTANCE_TOO_CLOSE:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum ERROR_DISTANCE_TOO_FAR:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum ERROR_INVALID_DEPTH:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum ERROR_LENS_PARTIALLY_COVERED:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum NONE:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum SUCCESS:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

.field public static final enum SUCCESS_PET_ONLY:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;


# instance fields
.field private final mMetadata:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v5, "SUCCESS_PET_ONLY"

    const/4 v6, 0x2

    const/16 v7, 0x3e8

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->SUCCESS_PET_ONLY:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v7, "ERROR_INVALID_DEPTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->ERROR_INVALID_DEPTH:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v9, "ERROR_DISTANCE_TOO_FAR"

    const/4 v10, 0x4

    const/16 v11, 0xb

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_FAR:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v11, "ERROR_DISTANCE_TOO_CLOSE"

    const/4 v12, 0x5

    const/16 v13, 0xc

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_CLOSE:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v13, "ERROR_LENS_PARTIALLY_COVERED"

    const/4 v14, 0x6

    const/16 v15, 0x15

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->ERROR_LENS_PARTIALLY_COVERED:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v15, "ERROR_LOW_LIGHT_CONDITION"

    const/4 v14, 0x7

    const/16 v12, 0x1f

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    .line 9
    new-instance v12, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const-string v15, "ERROR_NO_FACE_DETECTED"

    const/16 v14, 0x8

    const/16 v10, 0x29

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 10
    sput-object v10, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->$VALUES:[Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->mMetadata:I

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->mMetadata:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->$VALUES:[Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/util/BokehUtil$BokehCallbackState;

    return-object v0
.end method
