.class Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;
.super Ljava/lang/Object;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolutionParams"
.end annotation


# instance fields
.field private final mArraySize:I

.field private final mResolutionId:[I

.field private final mStrResolution:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mArraySize:I

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;)[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getResolutionId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mArraySize:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getStrResolution(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mArraySize:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
