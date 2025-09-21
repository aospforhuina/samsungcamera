.class Lk4/q$a;
.super Ljava/lang/Object;
.source "RecognizerInternal.java"

# interfaces
.implements Lk4/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk4/q;->a(Landroid/graphics/Bitmap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk4/q;


# direct methods
.method constructor <init>(Lk4/q;)V
    .locals 0

    iput-object p1, p0, Lk4/q$a;->a:Lk4/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk4/b;Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 0

    const-string p0, "RecognizerInternal"

    const-string p3, "OCR Text Detecting(detectText)...."

    .line 1
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1, p2}, Lk4/b;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OCR Text Detecting(detectText) Done (ret="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
