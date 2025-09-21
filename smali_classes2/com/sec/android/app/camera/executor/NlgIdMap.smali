.class Lcom/sec/android/app/camera/executor/NlgIdMap;
.super Ljava/lang/Object;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/executor/NlgIdMap$ParamAttr;,
        Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;
    }
.end annotation


# static fields
.field static final ALREADY_SET_NO:I = 0xe

.field static final ALREADY_SET_YES:I = 0xd

.field static final AVAILABLE_NO:I = 0xc

.field static final AVAILABLE_YES:I = 0xb

.field static final EXIST_NO:I = 0x8

.field static final EXIST_YES:I = 0x7

.field static final MATCH_NO:I = 0xf

.field static final NLG_ERROR_ALREADY_SET:I = 0x2

.field static final NLG_ERROR_CAMERA_TYPE_MISMATCH:I = 0x4

.field static final NLG_ERROR_CANNOT_CAPTURE:I = 0xc

.field static final NLG_ERROR_CANNOT_EXECUTE_WITH_CURRENT_MODE:I = 0x7

.field static final NLG_ERROR_CANNOT_PROCESS_BY_OTHER_SETTING:I = 0x8

.field static final NLG_ERROR_CANNOT_USE_FLASH:I = 0xb

.field static final NLG_ERROR_INVALID_PARAMETER:I = 0x6

.field static final NLG_ERROR_NEED_TO_SHOW_EDIT_MODE:I = 0x5

.field static final NLG_ERROR_NONE:I = 0x0

.field static final NLG_ERROR_NOT_IN_CURRENT_LIST:I = 0x3

.field static final NLG_ERROR_NOT_SUPPORT_THIS_FEATURE:I = 0xa

.field static final NLG_ERROR_NO_PARAMETER:I = 0x1

.field static final NLG_ERROR_OUT_OF_RANGE_PARAMETER:I = 0x9

.field static final NLG_NORMAL_RESULT:I = 0x64

.field static final NLG_TYPE_CHANGE_SHOOTING_MODE:I = 0x1

.field static final NLG_TYPE_COMMON_SCREEN_PARAM_BY_ALREADY_SET_SUCCESS_TYPE:I = 0x2

.field static final NLG_TYPE_COMMON_SCREEN_PARAM_BY_AVAILABLE_SUCCESS_TYPE:I = 0x3

.field static final NLG_TYPE_SHOOTING_SELECT:I = 0x5

.field static final NLG_TYPE_SWITCH_CAMERA:I = 0x4

.field static final NLG_TYPE_UNKNOWN:I = 0x0

.field static final OUT_OF_RANGE_NO:I = 0x11

.field static final OUT_OF_RANGE_YES:I = 0x10

.field static final SHOW_NO:I = 0x4

.field static final SHOW_YES:I = 0x3

.field static final SUPPORT_NO:I = 0x12

.field static final TYPE_PICTURE:I = 0x5

.field static final TYPE_VIDEO:I = 0x6

.field static final VALID_NO:I = 0xa

.field static final VALID_YES:I = 0x9

.field static final VALUE_FRONT:I = 0x1

.field static final VALUE_REAR:I = 0x2

.field private static mNlgParamAttrDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/executor/NlgIdMap$ParamAttr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap;->mNlgParamAttrDepot:Landroid/util/SparseArray;

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_VALUE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    sget-object v1, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_FRONT:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_REAR:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SHOW:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    sget-object v1, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_YES:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 5
    sget-object v2, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_NO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v3, 0x4

    invoke-static {v3, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_TYPE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    sget-object v3, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_PICTURE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v4, 0x5

    invoke-static {v4, v0, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 7
    sget-object v3, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_VIDEO:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v4, 0x6

    invoke-static {v4, v0, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_EXIST:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/4 v3, 0x7

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    const/16 v3, 0x8

    .line 9
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 10
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_VALID:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v3, 0x9

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    const/16 v3, 0xa

    .line 11
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 12
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_AVAILABLE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v3, 0xb

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    const/16 v3, 0xc

    .line 13
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 14
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_ALREADY_SET:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v3, 0xd

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    const/16 v3, 0xe

    .line 15
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 16
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_MATCH:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v3, 0xf

    invoke-static {v3, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 17
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_OUT_OF_RANGE:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v3, 0x10

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    const/16 v1, 0x11

    .line 18
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    .line 19
    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;->NLG_STRING_SUPPORT:Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;

    const/16 v1, 0x12

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(ILcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap;->mNlgParamAttrDepot:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ParamAttr;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ParamAttr;-><init>(Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;Lcom/sec/android/app/camera/executor/NlgIdMap$NlgId;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method static get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ParamAttr;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/executor/NlgIdMap;->mNlgParamAttrDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/executor/NlgIdMap$ParamAttr;

    return-object p0
.end method
