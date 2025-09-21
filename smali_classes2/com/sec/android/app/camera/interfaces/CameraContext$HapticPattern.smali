.class public final enum Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;
.super Ljava/lang/Enum;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HapticPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_LIST_SCROLLING:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_QUICK_SETTING_MOTION_PHOTO:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_QUICK_SETTING_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_SHUTTER_CALLBACK:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum CAMERA_SHUTTER_MID:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum DRAG_AND_DROP_FLOATING:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum FLOATING_SHUTTER_SHOW_HIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum QR_CODE_DETECTED:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum SLIDER:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum VIDEO_RECORD:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

.field public static final enum ZOOM_SLIDER_LARGE_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;


# instance fields
.field private mPatternId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v1, "CAMERA_SHUTTER_MID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER_MID:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v4, "CAMERA_SHUTTER"

    const/16 v5, 0x25

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 3
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v5, "VIDEO_RECORD"

    const/4 v6, 0x2

    const/16 v7, 0x26

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v7, "SLIDER"

    const/4 v8, 0x3

    const/16 v9, 0x29

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->SLIDER:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v10, "QR_CODE_DETECTED"

    const/4 v11, 0x4

    const/16 v12, 0x2c

    invoke-direct {v7, v10, v11, v12}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->QR_CODE_DETECTED:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 6
    new-instance v10, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v12, "CAMERA_SHUTTER_CALLBACK"

    const/4 v13, 0x5

    const/16 v14, 0x30

    invoke-direct {v10, v12, v13, v14}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER_CALLBACK:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 7
    new-instance v12, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v14, "CAMERA_LIST_SCROLLING"

    const/4 v15, 0x6

    const/16 v13, 0x31

    invoke-direct {v12, v14, v15, v13}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_LIST_SCROLLING:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 8
    new-instance v14, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v15, "ZOOM_SLIDER_LARGE_TICK"

    const/4 v11, 0x7

    invoke-direct {v14, v15, v11, v13}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->ZOOM_SLIDER_LARGE_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 9
    new-instance v13, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v15, "CAMERA_QUICK_SETTING_STABILIZATION"

    const/16 v11, 0x8

    const/16 v8, 0x36

    invoke-direct {v13, v15, v11, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_QUICK_SETTING_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 10
    new-instance v8, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v15, "CAMERA_QUICK_SETTING_MOTION_PHOTO"

    const/16 v11, 0x9

    const/16 v6, 0x37

    invoke-direct {v8, v15, v11, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_QUICK_SETTING_MOTION_PHOTO:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 11
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v15, "FLOATING_SHUTTER_SHOW_HIDE"

    const/16 v11, 0xa

    invoke-direct {v6, v15, v11, v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->FLOATING_SHUTTER_SHOW_HIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    .line 12
    new-instance v9, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const-string v15, "DRAG_AND_DROP_FLOATING"

    const/16 v11, 0xb

    const/16 v3, 0x6c

    invoke-direct {v9, v15, v11, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->DRAG_AND_DROP_FLOATING:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const/16 v3, 0xc

    new-array v3, v3, [Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v8, v3, v0

    const/16 v0, 0xa

    aput-object v6, v3, v0

    aput-object v9, v3, v11

    .line 13
    sput-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

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
    iput p3, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->mPatternId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    return-object v0
.end method


# virtual methods
.method public getPatternId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->mPatternId:I

    return p0
.end method
