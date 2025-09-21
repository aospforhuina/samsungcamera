.class Lcom/sec/android/app/camera/setting/WatermarkFragment$3;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/WatermarkFragment;->getEditTextMaxLengthFilter(I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/WatermarkFragment;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/WatermarkFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/WatermarkFragment$3;->this$0:Lcom/sec/android/app/camera/setting/WatermarkFragment;

    iput p2, p0, Lcom/sec/android/app/camera/setting/WatermarkFragment$3;->val$maxSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/setting/WatermarkFragment$3;->val$maxSize:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p4

    sub-int/2addr p6, p5

    sub-int/2addr p4, p6

    sub-int/2addr v1, p4

    const-string p4, ""

    if-gtz v1, :cond_1

    return-object p4

    :cond_1
    sub-int/2addr p3, p2

    if-lt v1, p3, :cond_2

    return-object v0

    :cond_2
    if-ge v1, p3, :cond_7

    add-int/2addr v1, p2

    add-int/lit8 p3, v1, -0x1

    .line 2
    :try_start_0
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p2, :cond_3

    return-object p4

    :cond_3
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-ge p3, p5, :cond_5

    .line 4
    iget-object p5, p0, Lcom/sec/android/app/camera/setting/WatermarkFragment$3;->this$0:Lcom/sec/android/app/camera/setting/WatermarkFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result p6

    invoke-static {p5, p6}, Lcom/sec/android/app/camera/setting/WatermarkFragment;->d0(Lcom/sec/android/app/camera/setting/WatermarkFragment;I)Z

    move-result p5

    if-eqz p5, :cond_4

    return-object p4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_5
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p3, 0x262a

    if-eq p0, p3, :cond_6

    const/16 p3, 0x271d

    if-eq p0, p3, :cond_6

    .line 6
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_6
    return-object p4

    :cond_7
    return-object v0
.end method
