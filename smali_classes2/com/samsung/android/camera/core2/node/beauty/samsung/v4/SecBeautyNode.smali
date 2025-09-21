.class public Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;
.super Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;
.source "SecBeautyNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;,
        Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;,
        Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;
    }
.end annotation


# static fields
.field private static final NATIVE_CALLBACK_DEBUG_INFO:I = 0x2

.field private static final NATIVE_CALLBACK_FACE_DATA:I = 0x1

.field private static final NATIVE_CALLBACK_PREVIEW_RESULT:I = 0x3

.field private static final NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_INIT_FOR_VIDEO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PREPARE_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS_BEAUTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS_BEAUTY_FOR_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS_CAPTURE_VIDEO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PRO_LIGHTING_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_RECONFIGURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SW_FACE_DETECTION_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/samsung/android/camera/core2/util/StrideInfo;

    const-class v3, Ljava/lang/Integer;

    new-instance v4, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "V4/SecBeautyNode"

    invoke-direct {v4, v5}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$1;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    invoke-direct {v4, v7, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$2;

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v3, v6, v7

    aput-object v3, v6, v8

    invoke-direct {v4, v8, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 4
    new-instance v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$3;

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v3, v6, v7

    aput-object v3, v6, v8

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 5
    new-instance v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$4;

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v1, v6, v7

    const/16 v9, 0xa

    invoke-direct {v4, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_SW_FACE_DETECTION_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 6
    new-instance v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$5;

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v3, v6, v7

    const/16 v9, 0xb

    invoke-direct {v4, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PRO_LIGHTING_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 7
    new-instance v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$6;

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v1, v6, v7

    const/16 v1, 0x63

    invoke-direct {v4, v1, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$6;-><init>(I[Ljava/lang/Class;)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PREPARE_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 8
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$7;

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Class;

    const-class v9, Landroid/util/Size;

    aput-object v9, v6, v7

    aput-object v3, v6, v8

    aput-object v3, v6, v5

    const/16 v9, 0x64

    invoke-direct {v1, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$7;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 9
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$8;

    new-array v6, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    aput-object v9, v6, v7

    aput-object v2, v6, v8

    const/16 v9, 0x65

    invoke-direct {v1, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$8;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PROCESS_BEAUTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 10
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$9;

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v7

    const-class v9, Landroid/util/Size;

    aput-object v9, v6, v8

    aput-object v2, v6, v5

    const/16 v9, 0x66

    invoke-direct {v1, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$9;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PROCESS_BEAUTY_FOR_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 11
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$10;

    new-array v6, v5, [Ljava/lang/Class;

    const-class v9, Landroid/util/Size;

    aput-object v9, v6, v7

    aput-object v3, v6, v8

    const/16 v9, 0x67

    invoke-direct {v1, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$10;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RECONFIGURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 12
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$11;

    new-array v6, v5, [Ljava/lang/Class;

    const-class v9, Landroid/util/Size;

    aput-object v9, v6, v7

    aput-object v3, v6, v8

    const/16 v9, 0x68

    invoke-direct {v1, v9, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$11;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_INIT_FOR_VIDEO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 13
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$12;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v7

    const-class v0, Landroid/util/Size;

    aput-object v0, v4, v8

    aput-object v2, v4, v5

    const/16 v0, 0x69

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$12;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PROCESS_CAPTURE_VIDEO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 14
    new-instance v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$13;

    new-array v1, v8, [Ljava/lang/Class;

    aput-object v3, v1, v7

    const/16 v2, 0x6a

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$13;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;)V
    .locals 7

    .line 1
    sget-object v6, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0x18830

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;Z)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$14;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$15;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$15;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$16;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$16;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "created - %s"

    .line 5
    invoke-static {v6, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->mPropertyTypeCommands:Ljava/util/List;

    sget-object p2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/Node;->mPropertyTypeCommands:Ljava/util/List;

    sget-object p2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node;->mPropertyTypeCommands:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDebugInfo:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->lambda$processPictureYuv$0([I)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->lambda$processPictureYuv$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->lambda$processPictureYuv$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->lambda$processPictureYuv$2(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$processPictureYuv$0([I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPictureYuv: SemCaptureResult.SENSOR_WDR_SENSITIVITY value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->setIsoProperty(I)V

    return-void
.end method

.method private synthetic lambda$processPictureYuv$1(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPictureYuv: SemCaptureResult.CONTROL_DYNAMIC_SHOT_HINT value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->n:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$processPictureYuv$2(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPictureYuv: SemCaptureResult.CONTROL_BRIGHTNESS_VALUE value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->o:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$processPictureYuv$3(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPictureYuv: SemCaptureResult.CONTROL_COLOR_TEMPERATURE value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->p:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDebugInfo:[B

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEyeEnlargeLevel:I

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceColorLevel:I

    .line 4
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceRetouchLevel:I

    .line 5
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeCheekLevel:I

    .line 6
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeChinLevel:I

    .line 7
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeEyeLevel:I

    .line 8
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeLipLevel:I

    .line 9
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeNoseLevel:I

    .line 10
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySlimFaceLevel:I

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFaceDetectionEnable:Z

    .line 12
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mIsoProperty:I

    .line 13
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    .line 14
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    .line 15
    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSmartBeautyLevel:I

    .line 16
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node2;->deinitialize()V

    return-void
.end method

.method public getRelightDirection()Landroid/graphics/Point;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRelightEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRelightLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onInitialized(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onInitialized"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "SEC_FLOATING_FEATURE_SAIV_SUPPORT_BEAUTY_LITE"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->a(Ljava/lang/String;)Z

    move-result v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PREPARE_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mVideoMode:Z

    const-string v1, "onInitialized fail - init lib fail"

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_INIT_FOR_VIDEO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewSize:Landroid/util/Size;

    aput-object v6, v5, v4

    iget v6, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mLensFacing:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "SEC_FLOATING_FEATURE_SAIV_CONFIG_BEAUTY_FACE"

    .line 7
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->b(Ljava/lang/String;)I

    move-result v0

    .line 8
    sget-object v5, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewSize:Landroid/util/Size;

    aput-object v7, v6, v4

    iget v7, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mLensFacing:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :goto_0
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mShootingMode:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->q:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V

    return-void

    .line 12
    :cond_3
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "processPictureYuv E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->needPictureBeauty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPictureYuv: SemCaptureResult.SCALER_FLIP_MODE value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->setFlipModeProperty(I)V

    .line 8
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->i2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 9
    new-instance v5, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/d;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/d;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 11
    new-instance v5, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/b;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/b;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 13
    new-instance v5, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/c;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/c;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 15
    new-instance v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/a;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/a;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->Z:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v1

    .line 18
    iget-boolean v3, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mVideoMode:Z
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "processPictureYuv X: failed to process beauty for capture"

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v3, :cond_0

    .line 19
    :try_start_1
    sget-object p2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PROCESS_CAPTURE_VIDEO:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/camera/core2/node/Node2;->nativeCall2(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 20
    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;->onError()V

    return-object v2

    .line 22
    :cond_0
    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v9, v8, [Ljava/lang/Object;

    sget-object v10, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->o:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v10}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object p2, v9, v7

    invoke-virtual {p0, v3, v9}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PROCESS_BEAUTY_FOR_CAPTURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/camera/core2/node/Node2;->nativeCall2(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 24
    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;->onError()V
    :try_end_1
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 26
    sget-object p2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPictureYuv X: fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;->onError()V

    return-object v2

    :cond_1
    const-string p2, "processPictureYuv - needPictureBeauty is false"

    .line 28
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDebugInfo:[B

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->s([B)V

    .line 30
    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDebugInfo:[B

    const-string p0, "processPictureYuv X"

    .line 31
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public processPreview(Landroid/media/Image;Lcom/samsung/android/camera/core2/ExtraBundle;)Landroid/media/Image;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->needPreviewBeauty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/media/Image;)V

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PROCESS_BEAUTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/NativeUtils;->getNativeContext(Landroid/media/Image;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "processPreview fail - process beauty fail"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 5
    sget-object p1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPreview fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public reconfigure(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "reconfigure - %s"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->reconfigure(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;)V

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RECONFIGURE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewSize:Landroid/util/Size;

    aput-object v2, v0, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mLensFacing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "reconfigure fail"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBeautyBypass(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyBypass:Z

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->m:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBeautyEffectIgnore(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyEffectIgnore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEffectIgnore:Z

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->n:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBeautyFaceRetouchLevel(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceRetouchLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyFaceRetouchLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceRetouchLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->b:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->p:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->c:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBeautySmoothnessLevel(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautySmoothnessLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySmoothnessLevel:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->b:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBeautyStrEnable(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyStrEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyStrEnable:Z

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->f:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBrightnessValueProperty(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBrightnessValueProperty:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBrightnessValueProperty:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->o:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setColorTemperatureProperty(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mColorTemperatureProperty:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mColorTemperatureProperty:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->p:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDeviceOrientation:I

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->l:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mLensFacing:I

    iget v3, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSensorOrientation:I

    .line 3
    invoke-static {p1, v2, v3}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getObjectOrientation(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEyeEnlargementLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEyeEnlargeLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeEnlargementLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEyeEnlargeLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->d:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFaceColorLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceColorLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceColorLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceColorLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->g:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFaceDetectionEnable:Z

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceDetectionEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFaceDetectionEnable:Z

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_SW_FACE_DETECTION_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setFlipModeProperty(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlipModeProperty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFlipModeProperty:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIsoProperty(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mIsoProperty:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mIsoProperty:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->k:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setProlightingType(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProlightingType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_PRO_LIGHTING_TYPE:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRelightDirection(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public setRelightEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setRelightLevel(I)V
    .locals 0

    return-void
.end method

.method public setReshapeAutoSupport(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReshapeAutoSupport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeAutoSupport:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->k:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReshapeCheekLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeCheekLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReshapeCheekLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeCheekLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->c:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setReshapeChinLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeChinLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReshapeChinLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeChinLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->g:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setReshapeEyeLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeEyeLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReshapeEyeLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeEyeLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->b:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setReshapeLipLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeLipLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReshapeLipLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeLipLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->f:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setReshapeNoseLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeNoseLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReshapeNoseLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeNoseLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_RESHAPE_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->d:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSelfieToneMode(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelfieToneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_CAMERA_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->m:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$CameraProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSkinBrightLevel(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSkinBrightLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySkinBrightLevel:I

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->p:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->c:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySlimFaceLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSlimFaceLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySlimFaceLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->f:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSmartBeautyEnable(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mEnableSmartBeauty:Z

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->l:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSmartBeautyLevel(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSmartBeautyLevel:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->SEC_BEAUTY_V4_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartBeautyLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSmartBeautyLevel:I

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;->NATIVE_COMMAND_BEAUTY_PROPERTY:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->k:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$BeautyProperty;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->tryNativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
