.class public Lk4/j;
.super Ljava/lang/Object;
.source "OCRResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/j$c;,
        Lk4/j$e;,
        Lk4/j$g;,
        Lk4/j$d;,
        Lk4/j$b;,
        Lk4/j$f;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk4/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk4/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lk4/j$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/j$a;

    invoke-direct {v0}, Lk4/j$a;-><init>()V

    sput-object v0, Lk4/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    .line 3
    iput-object v0, p0, Lk4/j;->b:Lk4/j$f;

    .line 4
    invoke-direct {p0}, Lk4/j;->j()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lk4/j;->b:Lk4/j$f;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    .line 9
    sget-object v1, Lk4/j$c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 10
    new-instance v0, Lk4/j$f;

    invoke-direct {v0}, Lk4/j$f;-><init>()V

    iput-object v0, p0, Lk4/j;->b:Lk4/j$f;

    .line 11
    sget-object v0, Lk4/j$f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk4/j$f;

    iput-object p1, p0, Lk4/j;->b:Lk4/j$f;

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Lk4/j$f;

    invoke-direct {v0}, Lk4/j$f;-><init>()V

    iput-object v0, p0, Lk4/j;->b:Lk4/j$f;

    return-void
.end method


# virtual methods
.method public c(Lk4/j$c;)V
    .locals 0

    iget-object p0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lk4/j;->j()V

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lk4/j$c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public f()Lk4/j$f;
    .locals 0

    iget-object p0, p0, Lk4/j;->b:Lk4/j$f;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object p0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/j$c;

    .line 3
    invoke-virtual {v1}, Lk4/j$c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()[Landroid/graphics/Point;
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    .line 1
    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7fffffff

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    const/high16 v4, -0x80000000

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    iget-object p0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/j$c;

    .line 3
    invoke-virtual {v1}, Lk4/j$c;->o()[Landroid/graphics/Point;

    move-result-object v1

    aget-object v4, v0, v3

    aget-object v7, v0, v3

    .line 4
    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, v1, v3

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v3

    aget-object v7, v0, v3

    .line 5
    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v8, v1, v3

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    aget-object v4, v0, v5

    aget-object v7, v0, v5

    .line 6
    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, v1, v5

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v5

    aget-object v7, v0, v5

    .line 7
    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v8, v1, v5

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    aget-object v4, v0, v6

    aget-object v7, v0, v6

    .line 8
    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, v1, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v6

    aget-object v7, v0, v6

    .line 9
    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v8, v1, v6

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->y:I

    aget-object v4, v0, v2

    aget-object v7, v0, v2

    .line 10
    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, v1, v2

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v2

    aget-object v7, v0, v2

    .line 11
    iget v7, v7, Landroid/graphics/Point;->y:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public o()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lk4/j;->i()[Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "OCRResult"

    const-string v2, "====================================================================="

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    aget-object v4, v0, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v0, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aget-object v4, v0, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    aget-object v4, v0, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v2, v7

    aget-object v4, v0, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    aget-object v4, v0, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v2, v6

    aget-object v4, v0, v7

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v2, v6

    aget-object v0, v0, v7

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v2, v4

    iget-object v0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    const-string v0, "OCRResult::Page [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)] has %d blocks"

    .line 5
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OCRResult::Page Text:"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/j$c;

    .line 8
    invoke-virtual {v0}, Lk4/j$c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_1
    return v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lk4/j;->b:Lk4/j$f;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
