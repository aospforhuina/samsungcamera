.class final enum Lcom/sec/android/app/camera/widget/ExpandableSlider$c;
.super Ljava/lang/Enum;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/ExpandableSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/widget/ExpandableSlider$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

.field public static final enum b:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

.field public static final enum c:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

.field private static final synthetic d:[Lcom/sec/android/app/camera/widget/ExpandableSlider$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    const-string v3, "TRACKING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->b:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    const-string v5, "READY_TO_TRACKING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->c:Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->d:[Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/widget/ExpandableSlider$c;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/widget/ExpandableSlider$c;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->d:[Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/widget/ExpandableSlider$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/widget/ExpandableSlider$c;

    return-object v0
.end method
