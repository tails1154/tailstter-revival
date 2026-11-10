.class public final Lcom/twitter/android/bt;
.super Lcom/twitter/android/e;


# instance fields
.field final d:Landroid/net/Uri;

.field e:Ljava/lang/String;

.field public f:I

.field public g:Landroid/graphics/Bitmap;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/e;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    iput v1, p0, Lcom/twitter/android/bt;->f:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/bt;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/bt;->c:Ljava/lang/String;

    return-void
.end method
