.class final Lcom/twitter/android/v;
.super Landroid/text/style/URLSpan;


# instance fields
.field private a:I

.field private final b:Lcom/twitter/android/bs;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/twitter/android/bs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/twitter/android/v;->a:I

    iput-object p2, p0, Lcom/twitter/android/v;->b:Lcom/twitter/android/bs;

    iput-object p4, p0, Lcom/twitter/android/v;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/v;->b:Lcom/twitter/android/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/v;->b:Lcom/twitter/android/bs;

    invoke-virtual {p0}, Lcom/twitter/android/v;->getURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/v;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/bs;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/v;->b:Lcom/twitter/android/bs;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/v;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
