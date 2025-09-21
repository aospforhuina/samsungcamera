.class Lk4/e;
.super Ljava/lang/Object;
.source "MOCRecognizer.java"

# interfaces
.implements Lk4/b;


# static fields
.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lk4/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/samsung/android/ocr/MOCR;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk4/e;->c:Ljava/util/HashMap;

    .line 2
    sget-object v1, Lk4/i;->a:Lk4/i;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->b:Lk4/i;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->c:Lk4/i;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->d:Lk4/i;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->f:Lk4/i;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->g:Lk4/i;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->k:Lk4/i;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->l:Lk4/i;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    sget-object v1, Lk4/i;->m:Lk4/i;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk4/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/e;->a:Lcom/samsung/android/ocr/MOCR;

    .line 3
    invoke-static {p1}, Lk4/e;->d(Lk4/i;)I

    move-result p1

    iput p1, p0, Lk4/e;->b:I

    .line 4
    new-instance p1, Lcom/samsung/android/ocr/MOCROptions$Builder;

    invoke-direct {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/samsung/android/ocr/MOCROptions$Builder;->setGetCharResult(Z)Lcom/samsung/android/ocr/MOCROptions$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->build()Lcom/samsung/android/ocr/MOCROptions;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/samsung/android/ocr/MOCR;->getInstance(Lcom/samsung/android/ocr/MOCROptions;)Lcom/samsung/android/ocr/MOCR;

    move-result-object p1

    iput-object p1, p0, Lk4/e;->a:Lcom/samsung/android/ocr/MOCR;

    .line 8
    iget p0, p0, Lk4/e;->b:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/ocr/MOCR;->initialize(I)I

    return-void
.end method

.method private static d(Lk4/i;)I
    .locals 1

    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static e()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/ocr/MOCR;->isOCRSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCR does not supported!"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static f(Lk4/i;)Z
    .locals 1

    sget-object v0, Lk4/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 2

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCRecognizer::detectText_ARGB_bmp() Used to MOCR library"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lk4/e;->a:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {p0, p1}, Lcom/samsung/android/ocr/MOCR;->detectText_ARGB_bmp(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 3

    const-string v0, "MOCRecgonzier"

    const-string v1, "MOCRecognizer::process_ARGB_bmp() Used to MOCR library"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOCRecognizer::process_ARGB_bmp() ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk4/e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Lcom/samsung/android/ocr/MOCRResult$Page;

    invoke-direct {v1}, Lcom/samsung/android/ocr/MOCRResult$Page;-><init>()V

    .line 4
    iget-object p0, p0, Lk4/e;->a:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/ocr/MOCR;->process_ARGB_bmp(Landroid/graphics/Bitmap;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-static {v1, p2}, Lk4/d;->d(Lcom/samsung/android/ocr/MOCRResult$Page;Lk4/j;)Lk4/j;

    .line 6
    invoke-virtual {p2}, Lk4/j;->o()Z

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MOCRecognizer::recognize() MOCR(process_ARGB_bmp) is Failed! ErrorCode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lk4/e;->a:Lcom/samsung/android/ocr/MOCR;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCR;->deinitialize()V

    return-void
.end method
