.class public final enum Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;
.super Ljava/lang/Enum;
.source "MenuLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/MenuLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum BACK_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum BACK_SINGLE_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum BACK_VIDEO_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum EMPTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum FOOD_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum FRONT_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum FRONT_VIDEO_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum MACRO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field public static final enum SINGLE_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->EMPTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v3, "BACK_PHOTO_EFFECTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v5, "MACRO_EFFECTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->MACRO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v7, "BACK_VIDEO_EFFECTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v9, "FRONT_PHOTO_EFFECTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v11, "FRONT_VIDEO_EFFECTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v13, "FOOD_COLOR_TUNE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FOOD_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v15, "BACK_BOKEH_BEAUTY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v14, "FRONT_BOKEH_BEAUTY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v12, "BACK_VIDEO_BOKEH_BEAUTY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_VIDEO_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 11
    new-instance v12, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v10, "FRONT_VIDEO_BOKEH_BEAUTY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_VIDEO_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 12
    new-instance v10, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v8, "BACK_SINGLE_BOKEH_BEAUTY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_SINGLE_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 13
    new-instance v8, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v6, "SINGLE_BOKEH_BEAUTY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->SINGLE_BOKEH_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 14
    new-instance v6, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v4, "SELFIE_TONE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 15
    new-instance v4, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v2, "CREATE_MY_FILTER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 16
    new-instance v2, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const-string v6, "MANUAL_COLOR_TUNE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    return-object v0
.end method
