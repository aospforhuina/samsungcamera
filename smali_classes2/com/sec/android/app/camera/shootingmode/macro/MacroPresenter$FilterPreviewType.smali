.class final enum Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;
.super Ljava/lang/Enum;
.source "MacroPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterPreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

.field public static final enum FILTER:Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

.field public static final enum NONE:Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    const-string v3, "FILTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/macro/MacroPresenter$FilterPreviewType;

    return-object v0
.end method
