.class final enum Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;
.super Ljava/lang/Enum;
.source "CreateMyFilterMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CreateMyFilterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum CROPPING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum EDIT_NAME:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum ERROR:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum FILTER_PREVIEWING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum PREPARING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum RELAUNCHING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

.field public static final enum SAVING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->IDLE:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->PREPARING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v3, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v5, "FILTER_PREVIEWING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->FILTER_PREVIEWING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v5, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v7, "CROPPING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->CROPPING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v7, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v9, "SAVING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->SAVING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v9, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v11, "RELAUNCHING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->RELAUNCHING:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v11, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->ERROR:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    new-instance v13, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const-string v15, "EDIT_NAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->EDIT_NAME:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 2
    sput-object v15, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->$VALUES:[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->$VALUES:[Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter$CreateMyFilterState;

    return-object v0
.end method
