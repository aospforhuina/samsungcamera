.class Lcom/sec/android/app/camera/engine/request/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;
    }
.end annotation


# static fields
.field private static final mRequestMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/engine/request/RequestId;",
            "Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->mRequestMap:Ljava/util/EnumMap;

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/i4;->a:Lcom/sec/android/app/camera/engine/request/i4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->HANDLE_CAMERA_ERROR:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/q2;->a:Lcom/sec/android/app/camera/engine/request/q2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/f4;->a:Lcom/sec/android/app/camera/engine/request/f4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/j4;->a:Lcom/sec/android/app/camera/engine/request/j4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/a2;->a:Lcom/sec/android/app/camera/engine/request/a2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MULTI_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/x2;->a:Lcom/sec/android/app/camera/engine/request/x2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SWITCH_TARGET_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/h4;->a:Lcom/sec/android/app/camera/engine/request/h4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/v2;->a:Lcom/sec/android/app/camera/engine/request/v2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/a3;->a:Lcom/sec/android/app/camera/engine/request/a3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/q1;->a:Lcom/sec/android/app/camera/engine/request/q1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/c4;->a:Lcom/sec/android/app/camera/engine/request/c4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/h2;->a:Lcom/sec/android/app/camera/engine/request/h2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/b2;->a:Lcom/sec/android/app/camera/engine/request/b2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->ADD_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/n1;->a:Lcom/sec/android/app/camera/engine/request/n1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/f3;->a:Lcom/sec/android/app/camera/engine/request/f3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/d2;->a:Lcom/sec/android/app/camera/engine/request/d2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/x1;->a:Lcom/sec/android/app/camera/engine/request/x1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/j2;->a:Lcom/sec/android/app/camera/engine/request/j2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/u2;->a:Lcom/sec/android/app/camera/engine/request/u2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/i1;->a:Lcom/sec/android/app/camera/engine/request/i1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->APPLY_SETTINGS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/o1;->a:Lcom/sec/android/app/camera/engine/request/o1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/i2;->a:Lcom/sec/android/app/camera/engine/request/i2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->RESTART_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/g1;->a:Lcom/sec/android/app/camera/engine/request/g1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SWITCH_MULTI_CAMERA_FACING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/t3;->a:Lcom/sec/android/app/camera/engine/request/t3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/l1;->a:Lcom/sec/android/app/camera/engine/request/l1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/u3;->a:Lcom/sec/android/app/camera/engine/request/u3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_TRANSIENT_CAPTURE_ACTION:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/s1;->a:Lcom/sec/android/app/camera/engine/request/s1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/t2;->a:Lcom/sec/android/app/camera/engine/request/t2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/j3;->a:Lcom/sec/android/app/camera/engine/request/j3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/z2;->a:Lcom/sec/android/app/camera/engine/request/z2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/e3;->a:Lcom/sec/android/app/camera/engine/request/e3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/w1;->a:Lcom/sec/android/app/camera/engine/request/w1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/o2;->a:Lcom/sec/android/app/camera/engine/request/o2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/t1;->a:Lcom/sec/android/app/camera/engine/request/t1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/l2;->a:Lcom/sec/android/app/camera/engine/request/l2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/u1;->a:Lcom/sec/android/app/camera/engine/request/u1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/g2;->a:Lcom/sec/android/app/camera/engine/request/g2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/c2;->a:Lcom/sec/android/app/camera/engine/request/c2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/n3;->a:Lcom/sec/android/app/camera/engine/request/n3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/i3;->a:Lcom/sec/android/app/camera/engine/request/i3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/z1;->a:Lcom/sec/android/app/camera/engine/request/z1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/m1;->a:Lcom/sec/android/app/camera/engine/request/m1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/v3;->a:Lcom/sec/android/app/camera/engine/request/v3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_SINGLE_TAKE_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/b3;->a:Lcom/sec/android/app/camera/engine/request/b3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/l3;->a:Lcom/sec/android/app/camera/engine/request/l3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/p1;->a:Lcom/sec/android/app/camera/engine/request/p1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/r2;->a:Lcom/sec/android/app/camera/engine/request/r2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/w2;->a:Lcom/sec/android/app/camera/engine/request/w2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/k2;->a:Lcom/sec/android/app/camera/engine/request/k2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_MULTI_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/d4;->a:Lcom/sec/android/app/camera/engine/request/d4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/k3;->a:Lcom/sec/android/app/camera/engine/request/k3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_MULTI_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/s3;->a:Lcom/sec/android/app/camera/engine/request/s3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/g3;->a:Lcom/sec/android/app/camera/engine/request/g3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/p3;->a:Lcom/sec/android/app/camera/engine/request/p3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/a4;->a:Lcom/sec/android/app/camera/engine/request/a4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/e2;->a:Lcom/sec/android/app/camera/engine/request/e2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/r3;->a:Lcom/sec/android/app/camera/engine/request/r3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_RESUME:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/s2;->a:Lcom/sec/android/app/camera/engine/request/s2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/e4;->a:Lcom/sec/android/app/camera/engine/request/e4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/o3;->a:Lcom/sec/android/app/camera/engine/request/o3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/c3;->a:Lcom/sec/android/app/camera/engine/request/c3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/z3;->a:Lcom/sec/android/app/camera/engine/request/z3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_PRIVATE_SETTING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/b4;->a:Lcom/sec/android/app/camera/engine/request/b4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/r1;->a:Lcom/sec/android/app/camera/engine/request/r1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/m2;->a:Lcom/sec/android/app/camera/engine/request/m2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/p2;->a:Lcom/sec/android/app/camera/engine/request/p2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/n2;->a:Lcom/sec/android/app/camera/engine/request/n2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_SUPER_SLOW_MOTION_RECORDING_FPS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/y1;->a:Lcom/sec/android/app/camera/engine/request/y1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_PRIVATE_COMMAND:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/y2;->a:Lcom/sec/android/app/camera/engine/request/y2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/k1;->a:Lcom/sec/android/app/camera/engine/request/k1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/q3;->a:Lcom/sec/android/app/camera/engine/request/q3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_ORIENTATION:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/m3;->a:Lcom/sec/android/app/camera/engine/request/m3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/j1;->a:Lcom/sec/android/app/camera/engine/request/j1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/g4;->a:Lcom/sec/android/app/camera/engine/request/g4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_ZOOM_LOCK:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/d3;->a:Lcom/sec/android/app/camera/engine/request/d3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/x3;->a:Lcom/sec/android/app/camera/engine/request/x3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/h1;->a:Lcom/sec/android/app/camera/engine/request/h1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->RESET_COMPOSITION_GUIDE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/w3;->a:Lcom/sec/android/app/camera/engine/request/w3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/f2;->a:Lcom/sec/android/app/camera/engine/request/f2;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/v1;->a:Lcom/sec/android/app/camera/engine/request/v1;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_HYPERLAPSE_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/y3;->a:Lcom/sec/android/app/camera/engine/request/y3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_OBJECT_DETECTION_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/h3;->a:Lcom/sec/android/app/camera/engine/request/h3;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/engine/request/RequestId;->values()[Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestBuilder : RequestId size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/camera/engine/request/RequestId;->values()[Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Map size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$67(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$49(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$40(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$58(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$4(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$73(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$12(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$6(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$15(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$55(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$78(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$36(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$11(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$21(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$17(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$48(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$34(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$64(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$32(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$65(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$1(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$46(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$57(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$27(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$18(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$7(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$47(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$5(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$29(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$8(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$22(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$43(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$63(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$60(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method static buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method static buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 7

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->mRequestMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;->build(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$37(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$74(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$66(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$30(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$68(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$14(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$28(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$52(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$25(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$81(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$2(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$39(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$50(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$3(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$44(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$76(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$71(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$19(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$38(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 7

    new-instance v6, Lcom/sec/android/app/camera/engine/request/OpenCameraRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/engine/request/OpenCameraRequest;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object v6
.end method

.method private static synthetic lambda$static$1(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$10(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$11(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartConnectingMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartConnectingMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$12(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p4, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p4
.end method

.method private static synthetic lambda$static$13(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/AddPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/AddPreviewSurfaceRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$14(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/NotifySwitchCameraPreparedRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/NotifySwitchCameraPreparedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$15(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$16(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/NotifyChangeShootingModeCompletedRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/NotifyChangeShootingModeCompletedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method private static synthetic lambda$static$17(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$18(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$19(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopPreviewRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StopPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method private static synthetic lambda$static$2(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 7

    new-instance v6, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object v6
.end method

.method private static synthetic lambda$static$20(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ApplySettingsRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ApplySettingsRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-object p0
.end method

.method private static synthetic lambda$static$21(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$22(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/RestartPreviewRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RestartPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-object p0
.end method

.method private static synthetic lambda$static$23(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SwitchMultiCameraFacingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/SwitchMultiCameraFacingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$24(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method private static synthetic lambda$static$25(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitAeAfTriggerStateChangedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitAeAfTriggerStateChangedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$26(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetTransientCaptureActionRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetTransientCaptureActionRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$27(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakePictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$28(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakePreviewPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/TakePreviewPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$29(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$3(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/InitializeMakerRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/InitializeMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$30(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$31(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$32(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$33(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeBurstPictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$34(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopBurstPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$35(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeAgifBurstPictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeAgifBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$36(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopAgifBurstPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopAgifBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$37(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartStitchingCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$38(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopStitchingCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$39(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelStitchingCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$4(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/UpdateMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/UpdateMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$40(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartSingleTakePhotoRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartSingleTakePhotoRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$41(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopSingleTakePhotoRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopSingleTakePhotoRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$42(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelSingleTakePhotoRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelSingleTakePhotoRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$43(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeSingleTakeCaptureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeSingleTakeCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$44(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartSingleTakeVideoRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StartSingleTakeVideoRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$45(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopSingleTakeVideoRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopSingleTakeVideoRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$46(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$47(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareMediaRecorderRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/PrepareMediaRecorderRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method private static synthetic lambda$static$48(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartVideoPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$49(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartMultiVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartMultiVideoPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$5(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/UpdateMultiMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/UpdateMultiMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$50(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$51(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopMultiVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopMultiVideoPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$52(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$53(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$54(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$55(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method private static synthetic lambda$static$56(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ResumeVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/ResumeVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$57(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitResumeRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitResumeRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$58(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeVideoSnapshotRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeVideoSnapshotRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method private static synthetic lambda$static$59(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeMultiVideoSnapshotRequest;

    check-cast p4, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeMultiVideoSnapshotRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/util/Map;)V

    return-object p0
.end method

.method private static synthetic lambda$static$6(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SwitchTargetMakerRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SwitchTargetMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$60(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartAutoFocusRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartAutoFocusRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$61(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelAutoFocusRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelAutoFocusRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$62(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetPrivateSettingRequest;

    check-cast p4, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetPrivateSettingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;)V

    return-object p0
.end method

.method private static synthetic lambda$static$63(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartScreenFlashRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartScreenFlashRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$64(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakePreviewSnapShotRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/TakePreviewSnapShotRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$65(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartSuperSlowMotionRecordingRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StartSuperSlowMotionRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$66(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelSuperSlowMotionRecordingRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/CancelSuperSlowMotionRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$67(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ChangeSuperSlowMotionRecordingFpsRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ChangeSuperSlowMotionRecordingFpsRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$68(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetPrivateCommandRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/MakerPrivateCommand;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetPrivateCommandRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/MakerPrivateCommand;)V

    return-object p0
.end method

.method private static synthetic lambda$static$69(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelPrepareTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelPrepareTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$7(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitPreviewSurfaceRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$70(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$71(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetOrientationRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetOrientationRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$72(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartShutterTimerRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StartShutterTimerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;)V

    return-object p0
.end method

.method private static synthetic lambda$static$73(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ReleaseMediaRecorderRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/ReleaseMediaRecorderRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$74(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartZoomLockRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartZoomLockRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$75(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopBackgroundRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopBackgroundRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$76(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/WaitRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$77(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ResetCompositionGuideRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ResetCompositionGuideRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method private static synthetic lambda$static$78(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetRecordingStopTriggerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/SetRecordingStopTriggerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$79(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelSingleTakeVideoRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelSingleTakeVideoRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$8(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitExtraPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitExtraPreviewSurfaceRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$80(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetHyperLapseRecordingStopTriggerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/SetHyperLapseRecordingStopTriggerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method private static synthetic lambda$static$81(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetObjectDetectionTriggerRequest;

    check-cast p4, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetObjectDetectionTriggerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-object p0
.end method

.method private static synthetic lambda$static$9(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ChangePreviewSurfaceSizeRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ChangePreviewSurfaceSizeRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/Resolution;)V

    return-object p0
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$72(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$59(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$69(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$53(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$24(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$70(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$41(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$56(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$13(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$51(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$20(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$23(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$45(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$42(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$9(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$77(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$26(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$75(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$33(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$80(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$35(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$61(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$79(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$54(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$31(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$62(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$16(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->lambda$static$10(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method
